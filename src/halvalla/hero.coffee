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
  # section hero
  # 
  hero: =>
    T.section "#hero.align-items-center.d-flex.flex-column.justify-content-end", =>
      @heroCarousel()
      T.tag "svg", ".hero-waves", xmlns: "http://www.w3.org/2000/svg", xmlns:xlink: "http://www.w3.org/1999/xlink", viewbox: "0 24 150 28", preserveaspectratio: "none", =>
        T.tag "defs", =>
          @wave_path()
        T.tag "g", ".wave1", =>
          T.tag "use", xlink:href: "#wave-path", x: "50", y: "3", fill: "rgba(255,255,255, .1)"
        T.tag "g", ".wave2", =>
          T.tag "use", xlink:href: "#wave-path", x: "50", y: "0", fill: "rgba(255,255,255, .2)"
        T.tag "g", ".wave3", =>
          T.tag "use", xlink:href: "#wave-path", x: "50", y: "9", fill: "#fff"
  # 
  # section wave-path
  # 
  wave_path: =>
    T.tag "path", "#wave-path", d: "M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z"
  # 
  # section heroCarousel
  # 
  heroCarousel: =>
    T.div "#heroCarousel.carousel.carousel-fade.container", "data-ride": "carousel", =>
      T.comment 'Slide 1'
      T.div ".active.carousel-item", =>
        T.div ".carousel-container", =>
          T.h2 ".animated.fadeInDown", =>
            T.span ".en", => T.raw "Welcome to The National Institute of Agriculture at Prek Leap"
            T.span ".kh", => T.raw """
សូមស្វាគមន៍មកកាន់វិទ្យាស្ថានជាតិកសិកម្មនៅព្រែកលៀប
"""
          T.p ".animated.fadeInUp", =>
            T.span ".en", => T.raw """
Under the guiding principle of Nation Religion King, we nurture and sustain the minds of the people and the bounty of Cambodia through agriculture.
"""
            T.span ".kh", => T.raw """
ក្រោមការដឹកនាំដ៏ឈ្លាសវៃរបស់ជាតិសាសនានិងព្រះមហាក្សត្រយើងចិញ្ចឹមបីបាច់និងទ្រទ្រង់គំនិតរបស់ប្រជាជននិងអំណោយផលរបស់ប្រទេសកម្ពុជាតាមរយៈវិស័យកសិកម្ម។
"""
          T.a ".animated.btn-get-started.fadeInUp.scrollto", href: "#about", => T.raw "Read More"
      T.comment 'Slide 2'
      T.div ".carousel-item", =>
        T.div ".carousel-container", =>
          T.h2 ".animated.fadeInDown", =>
            T.span ".en", => T.raw "Teaching"
            T.span ".kh", => T.raw """
ការបង្រៀន
"""
          T.p ".animated.fadeInUp", =>
            T.span ".en", => T.raw """
Our students have become prosperous, righteous and generous through the land and waters
"""
            T.span ".kh", => T.raw """
សិស្សរបស់យើងបានរីកចម្រើនរុងរឿងសុចរិតនិងសប្បុរសតាមរយៈដីនិងទឹក
"""
          T.a ".animated.btn-get-started.fadeInUp.scrollto", href: "#about", => T.raw "Read More"
      T.comment 'Slide 3'
      T.div ".carousel-item", =>
        T.div ".carousel-container", =>
          T.h2 ".animated.fadeInDown", =>
            T.span ".en", => T.raw "Research"
            T.span ".kh", => T.raw "ការស្រាវជ្រាវ"
          T.p ".animated.fadeInUp", =>
            T.span ".en", => T.raw """
We encourage the exploration of how nature may provide more for all of us through agriculture
"""
            T.span ".kh", => T.raw """
យើងលើកទឹកចិត្តដល់ការរុករកពីរបៀបដែលធម្មជាតិអាចផ្តល់​​ឲ្យយើងទាំងអស់តាមរយៈកសិកម្ម
"""
          T.a ".animated.btn-get-started.fadeInUp.scrollto", href: "#about", => T.raw "Read More"
      T.a ".carousel-control-prev", href: "#heroCarousel", role: "button", "data-slide": "prev", =>
        T.span ".bx.bx-chevron-left.carousel-control-prev-icon", "aria-hidden": "true"
        T.span ".sr-only", => T.raw "Previous"
      T.a ".carousel-control-next", href: "#heroCarousel", role: "button", "data-slide": "next", =>
        T.span ".bx.bx-chevron-right.carousel-control-next-icon", "aria-hidden": "true"
        T.span ".sr-only", => T.raw "Next"
allMeta = []
htmlTitle = ""
module.exports.default = (new module.exports()).hero