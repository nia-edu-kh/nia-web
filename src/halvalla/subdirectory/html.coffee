# 
happeningDetailItem (text,caption,pix)->
  T.div ".happening-item", =>
    T.p =>
      T.i ".bx.bxs-quote-alt-left.quote-icon-left"
      T.raw  text
      T.i ".bx.bxs-quote-alt-right.quote-icon-right"
    T.img ".happening-img", src: "#{pix.src}", alt: ""
    caption = [caption] if type caption == "string"
    T.h3 => T.raw caption.shift()
    while caption.length >0
      T.h4 caption.shift()
    return

T = require 'halvalla'
module.exports = class C_html
  #pass the db entry into the class so that the classes have access to it
  constructor: (@db,@allDB)->
    return

  # 
  # section html
  # 
  html: =>
    T.comment '======= Happenings Section ======='
    @happenings()
    T.comment 'End Happenings Section'
  # 
  # section happenings
  # 
  details= [
      text:  """ Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
"""
      pix:
        src: "assets/img/happenings/happenings-1.jpg"
        alt: ""
      caption:    ["Sara Wilsson", "Designer"]
    ,
      text: "bla"
      pix: "assets/img/happenings/happenings-1.jpg"
      caption: "only one line"
    ,
      text: "blo"
      pix: "assets/img/happenings/happenings-1.jpg"
      caption: [ " one line", "two one line", "3  one line" ]
  ]
  happenings: (detail)=>
    T.section "#happenings.happenings", =>
      T.div ".container", =>
        T.div ".section-title", "data-aos": "zoom-out", =>
          T.h2 => T.raw "Happenings"
          T.p => T.raw "What they are saying about us"
        T.div ".owl-carousel.happenings-carousel", "data-aos": "fade-up", =>
          _.detail.map happeningItem 

allMeta = []
htmlTitle = ""
