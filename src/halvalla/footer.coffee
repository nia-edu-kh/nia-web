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
  # section footer
  # 
  footer: =>
    T.footer "#footer", =>
      T.div ".container", =>
        T.h3 => T.raw "Prek Leap National Institute of Agriculture"
        T.p =>
          T.span ".en", => T.raw """
We are the leading agricultural research institute in Cambodia, we are locaded in Prek Leap village, a suburb of Phnom Penh, Cambodia
"""
          T.span ".kh", => T.raw """
We are the leading agricultural research institute in Cambodia, we are locaded in Prek Leap village, a suburb of Phnom Penh, Cambodia
"""
        T.div ".social-links", =>
          T.a ".twitter", href: "#", =>
            T.i ".bx.bxl-twitter"
          T.a ".facebook", href: "#", =>
            T.i ".bx.bxl-facebook"
          T.a ".instagram", href: "#", =>
            T.i ".bx.bxl-instagram"
          T.a ".google-plus", href: "#", =>
            T.i ".bx.bxl-skype"
          T.a ".linkedin", href: "#", =>
            T.i ".bx.bxl-linkedin"
        T.div ".copyright", =>
          T.raw """
&copy; Copyright
"""
          T.strong =>
            T.span => T.raw "Cambodian Center for Bamboo Studies"
          T.raw """
. All Rights Reserved
"""
        T.div ".credits", =>
          T.comment 'All the links in the footer should remain intact.'
          T.comment 'You can delete the links only if you purchased the pro version.'
          T.comment 'Licensing information: https://bootstrapmade.com/license/'
          T.comment 'Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/selecao-bootstrap-template/'
          T.raw """
Designed by
"""
          T.a href: "https://bootstrapmade.com/", => T.raw "BootstrapMade"
allMeta = []
htmlTitle = ""
module.exports.default = (new module.exports()).footer