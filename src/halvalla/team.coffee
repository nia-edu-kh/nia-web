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
  # section team
  # 
  team: =>
    T.section "#team.team", =>
      T.div ".container", =>
        T.div ".section-title", "data-aos": "zoom-out", =>
          T.h2 => T.raw "Team"
          T.p => T.raw "Our Hardworking Team"
        T.div ".row", =>
          T.div ".align-items-stretch.col-lg-3.col-md-6.d-flex", =>
            T.div ".member", "data-aos": "fade-up", =>
              T.div ".member-img", =>
                T.img ".img-fluid", src: "assets/img/team/team-1.jpg", alt: ""
                T.div ".social", =>
                  T.a href: "", =>
                    T.i ".icofont-twitter"
                  T.a href: "", =>
                    T.i ".icofont-facebook"
                  T.a href: "", =>
                    T.i ".icofont-instagram"
                  T.a href: "", =>
                    T.i ".icofont-linkedin"
              T.div ".member-info", =>
                T.h4 => T.raw "Walter White"
                T.span => T.raw "Chief Executive Officer"
          T.div ".align-items-stretch.col-lg-3.col-md-6.d-flex", =>
            T.div ".member", "data-aos": "fade-up", "data-aos-delay": "100", =>
              T.div ".member-img", =>
                T.img ".img-fluid", src: "assets/img/team/team-2.jpg", alt: ""
                T.div ".social", =>
                  T.a href: "", =>
                    T.i ".icofont-twitter"
                  T.a href: "", =>
                    T.i ".icofont-facebook"
                  T.a href: "", =>
                    T.i ".icofont-instagram"
                  T.a href: "", =>
                    T.i ".icofont-linkedin"
              T.div ".member-info", =>
                T.h4 => T.raw "Sarah Jhonson"
                T.span => T.raw "Product Manager"
          T.div ".align-items-stretch.col-lg-3.col-md-6.d-flex", =>
            T.div ".member", "data-aos": "fade-up", "data-aos-delay": "200", =>
              T.div ".member-img", =>
                T.img ".img-fluid", src: "assets/img/team/team-3.jpg", alt: ""
                T.div ".social", =>
                  T.a href: "", =>
                    T.i ".icofont-twitter"
                  T.a href: "", =>
                    T.i ".icofont-facebook"
                  T.a href: "", =>
                    T.i ".icofont-instagram"
                  T.a href: "", =>
                    T.i ".icofont-linkedin"
              T.div ".member-info", =>
                T.h4 => T.raw "William Anderson"
                T.span => T.raw "CTO"
          T.div ".align-items-stretch.col-lg-3.col-md-6.d-flex", =>
            T.div ".member", "data-aos": "fade-up", "data-aos-delay": "300", =>
              T.div ".member-img", =>
                T.img ".img-fluid", src: "assets/img/team/team-4.jpg", alt: ""
                T.div ".social", =>
                  T.a href: "", =>
                    T.i ".icofont-twitter"
                  T.a href: "", =>
                    T.i ".icofont-facebook"
                  T.a href: "", =>
                    T.i ".icofont-instagram"
                  T.a href: "", =>
                    T.i ".icofont-linkedin"
              T.div ".member-info", =>
                T.h4 => T.raw "Amanda Jepson"
                T.span => T.raw "Accountant"
allMeta = []
htmlTitle = ""
module.exports.default = (new module.exports()).team