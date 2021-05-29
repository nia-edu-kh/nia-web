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
  # section newsletter
  # 
  newsletter: =>
    T.section "#newsletter.fadeInUp.newsletter.text-center.wow", =>
      T.div ".overlay.padd-section", =>
        T.div ".container", =>
          T.div ".justify-content-center.row", =>
            T.div ".col-lg-6.col-md-9", =>
              T.form ".form-inline", method: "POST", action: "#", =>
                T.input "..form-control", type: "email", placeholder: "Email Adress", name: "email"
                T.button ".btn.btn-default", type: "submit", =>
                  T.i ".fa.fa-location-arrow"
                  T.raw "Subscribe"
          T.ul ".list-unstyled", =>
            T.li =>
              T.a href: "#", =>
                T.i ".fa.fa-facebook"
            T.li =>
              T.a href: "#", =>
                T.i ".fa.fa-twitter"
            T.li =>
              T.a href: "#", =>
                T.i ".fa.fa-google-plus"
            T.li =>
              T.a href: "#", =>
                T.i ".fa.fa-linkedin"
allMeta = []
htmlTitle = ""
module.exports.default = (new module.exports()).newsletter