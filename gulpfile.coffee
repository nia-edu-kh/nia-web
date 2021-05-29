# Clean up the dist folder before running any task
 
gulpInsert = require 'gulp-insert'
coffee = require 'gulp-coffee'
examine = require './examine.coffee'

clean = ->
  del distDir + '**/*'

# Task: Copy Files

copyFiles = ->
  assetsFolder = gulp.src([
    './src/assets/**/*'
    '!./src/assets/js/main.js'
  ]).pipe(gulp.dest(distDir + 'assets/')).pipe(browserSync.stream())
  formsFolder = gulp.src('./src/forms/**/*').pipe(gulp.dest(distDir + 'forms/'))
  mergeStream assetsFolder, formsFolder

# Task: Compile HTML

pfs = (stream) ->
  new Promise((resolve, reject) ->
    stream.on 'finish', resolve
    stream.on 'end', resolve
    # unsure if should use finish or end
    stream.on 'error', reject
    return
    )

compileHalvalla = (cb)->
  console.log "in Halvalla"
  console.log "Generating halvalla based html"
  a=pfs(
    gulp.src("./src/halvalla/**/*.coffee")
      #.pipe gulpInsert.prepend "require './src/nia-web.coffee'"
      .pipe gulpInsert.append """
        debugger
        unless renderer?
          return JSON.stringify {db:false,html:''}
        t= (T.render (new renderer db).html)
        value= { db: db, html:t }
        return JSON.stringify(value)
        """
      .pipe coffee()
      .pipe examine()
      .pipe gulp.dest distDir
  )
  b=()->
    console.log "starting Mystories"
    myStories = allDB.filter site: site
    allStories = allDB

    return pfs(gulp.src('./mystories.json', allowEmpty:true)
      .pipe gulpInsert.append "myStories=#{JSON.stringify myStories}"
      .pipe rename 'mystories.json'
      .pipe gulp.dest distDir
      )
  c=()->
    console.log "starting allstories"
    allStories = allDB

    return pfs(gulp.src('./allstories.json', allowEmpty:true)
      .pipe gulpInsert.append "allStories=#{JSON.stringify allStories.toJSON()}"
      .pipe rename 'allstories.json'
      .pipe gulp.dest distDir
      )
  a.then( b).then(c).then ()->
   console.log "DONE HTML and stories"
   cb() if cb

compileHTML = ->
  css_links = ''
  js_links = ''
  for dependency of dependencies
    if dependencies[dependency].css_link != undefined
      css_links += '<link href="' + dependencies[dependency].css_link + '" rel="stylesheet">'
    if dependencies[dependency].js_link != undefined
      js_links += '<script src="' + dependencies[dependency].js_link + '"></script>'
  gulp.src([
    './src/*.html'
    '!./src/template.html'
  ]).pipe(nunjucks.compile()).pipe(inject.replace('<!-- Vendor CSS Files -->', '<!-- Vendor CSS Files -->' + css_links)).pipe(inject.replace('<!-- Vendor JS Files -->', '<!-- Vendor JS Files -->' + js_links)).pipe(beautify.html(
    indent_size: 2
    max_preserve_newlines: 1)).pipe(inject.replace('</head>', '  <!-- =======================================================\u000d\n  ' + credits.join('\u000d\n  ') + '\u000d\n  ======================================================== -->\u000d\n</head>')).pipe(gulp.dest(distDir)).pipe browserSync.stream()

# Task: Compile SCSS

compileSCSS = ->
  gulp.src('./src/scss/**/*.scss').pipe(sass(outputStyle: 'expanded')).on('error', sass.logError).pipe(autoprefixer(cascade: false)).pipe(inject.prepend('/**' + os.EOL + credits.join(os.EOL) + os.EOL + '*/' + os.EOL + os.EOL)).pipe(gulp.dest(distDir + 'assets/css')).pipe browserSync.stream()

# Task: Compile JS

compileJS = ->
  gulp.src('./src/assets/js/main.js').pipe(beautify.js(
    indent_size: 2
    max_preserve_newlines: 2)).pipe(inject.prepend('/**' + os.EOL + credits.join(os.EOL) + os.EOL + '*/' + os.EOL)).pipe(gulp.dest(distDir + 'assets/js')).pipe browserSync.stream()

# Task: Copy Dependencies

copyDependencies = ->
  stream = mergeStream()
  for dependency of dependencies
    if dependencies[dependency].src
      stream.add gulp.src(dependencies[dependency].src).pipe(gulp.dest(distDir + dependencies[dependency].dest))
    else if dependencies[dependency].srcs
      for multidependency of dependencies[dependency].srcs
        stream.add gulp.src(dependencies[dependency].srcs[multidependency].src).pipe(gulp.dest(distDir + dependencies[dependency].srcs[multidependency].dest))
  stream

# Init live server browser sync

initBrowserSync = (done) ->
  browserSync.init
    server: baseDir: distDir
    port: 3000
    notify: false
  done()
  return

# Watch files

watchFiles = ->
  gulp.watch './src/scss/**/*', compileSCSS
  gulp.watch './src/**/*.html', compileHTML
  gulp.watch [
    './src/assets/**/*'
    '!./src/assets/js/main.js'
  ], copyFiles
  gulp.watch './src/assets/js/main.js', compileJS
  return

'use strict'
# Load Plugins
autoprefixer = require('gulp-autoprefixer')
beautify = require('gulp-beautify')
browserSync = require('browser-sync').create()
del = require('del')
gulp = require('gulp')
mergeStream = require('merge-stream')
nunjucks = require('gulp-nunjucks')
sass = require('gulp-sass')
inject = require('gulp-inject-string')
os = require('os')
pkg = require('./package.json')
dependencies = require('./dependencies.json')

###*
# Set the destination/production directory
# This is where the project is compiled and exported for production.
# This folder is auto created and managed by gulp. 
# Do not add/edit/save any files or folders iside this folder. They will be deleted by the gulp tasks.
###

distDir = './dist/'
# Template credits
credits = [
  '* Template Name: ' + pkg.title + ' - v' + pkg.version
  '* Template URL: ' + pkg.homepage
  '* Author: ' + pkg.author
  '* License: ' + pkg.license
]
# Export tasks
dist = gulp.series(clean, gulp.parallel(copyFiles, compileHTML, compileSCSS, compileJS, compileHalvalla, copyDependencies))
exports.watch = gulp.series(dist, watchFiles)
exports.start = gulp.series(dist, gulp.parallel(watchFiles, initBrowserSync))
exports.default = dist
