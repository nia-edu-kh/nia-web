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
  # section bachelor-details
  # 
allMeta = []
htmlTitle = ""
module.exports.default = (new module.exports()).portfolio-details