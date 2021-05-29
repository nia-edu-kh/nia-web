# 
T = require 'halvalla'
module.exports = class theStory
  #pass the db entry into the class so that the classes have access to it
  constructor: (@db,@allDB)->
    return

  # 
  # section html
  # 
  html: =>
    T.comment '======= Testimonials Section ======='
    @testimonials()
    T.comment 'End Testimonials Section'
  # 
  # section testimonials
  # 
allMeta = []
htmlTitle = ""
module.exports.default = (new module.exports()).html