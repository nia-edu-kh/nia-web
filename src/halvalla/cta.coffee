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
  # section cta
  # 
  cta: =>
    T.section "#cta.cta", =>
      T.div ".container", =>
        T.div ".row", "data-aos": "zoom-out", =>
          T.div ".col-lg-9.text-center.text-lg-left", =>
            T.h3 => T.raw "Call To Action"
            T.p => T.raw "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
          T.div ".col-lg-3.cta-btn-container.text-center", =>
            T.a ".align-middle.cta-btn", href: "#", => T.raw "Call To Action"
allMeta = []
htmlTitle = ""
module.exports.default = (new module.exports()).cta