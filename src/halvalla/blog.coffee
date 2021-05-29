# 
T = require 'halvalla'
module.exports = class theStory
  #pass the db entry into the class so that the classes have access to it
  constructor: (@db,@allDB)->
    return

  # 
  # section html
  # 
  # 
  # section blog
  # 
  blog: =>
    T.section "#blog.fadeInUp.padd-section.wow", =>
      T.div ".container", =>
        T.div ".section-title.text-center", =>
          T.h2 => T.raw "Latest posts"
          T.p ".separator", => T.raw "Integer cursus bibendum augue ac cursus ."
      T.div ".container", =>
        T.div ".row", =>
          T.div ".col-lg-4.col-md-6", =>
            T.div ".block-blog.text-left", =>
              T.a href: "#", =>
                T.img src: "assets/img/blog/blog-image-1.jpg", alt: "img"
              T.div ".content-blog", =>
                T.h4 =>
                  T.a href: "#", => T.raw "whats isthe difference between good and bat typography"
                T.span => T.raw "05, juin 2017"
                T.a ".pull-right.readmore", href: "#", => T.raw "read more"
          T.div ".col-lg-4.col-md-6", =>
            T.div ".block-blog.text-left", =>
              T.a href: "#", =>
                T.img ".img-responsive", src: "assets/img/blog/blog-image-2.jpg", alt: "img"
              T.div ".content-blog", =>
                T.h4 =>
                  T.a href: "#", => T.raw "whats isthe difference between good and bat typography"
                T.span => T.raw "05, juin 2017"
                T.a ".pull-right.readmore", href: "#", => T.raw "read more"
          T.div ".col-lg-4.col-md-6", =>
            T.div ".block-blog.text-left", =>
              T.a href: "#", =>
                T.img ".img-responsive", src: "assets/img/blog/blog-image-3.jpg", alt: "img"
              T.div ".content-blog", =>
                T.h4 =>
                  T.a href: "#", => T.raw "whats isthe difference between good and bat typography"
                T.span => T.raw "05, juin 2017"
                T.a ".pull-right.readmore", href: "#", => T.raw "read more"
allMeta = []
htmlTitle = ""
module.exports.default = (new module.exports()).blog