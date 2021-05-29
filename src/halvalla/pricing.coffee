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
  # section pricing
  # 
  pricing: =>
    T.section "#pricing.pricing", =>
      T.div ".container", =>
        T.div ".section-title", "data-aos": "zoom-out", =>
          T.h2 => T.raw "Pricing"
          T.p => T.raw "Our Competing Prices"
        T.div ".row", =>
          T.div ".col-lg-3.col-md-6", =>
            T.div ".box", "data-aos": "zoom-in", =>
              T.h3 => T.raw "Free"
              T.h4 =>
                T.sup => T.raw "$"
                T.raw "0"
                T.span => T.raw "/ month"
              T.ul =>
                T.li => T.raw "Aida dere"
                T.li => T.raw "Nec feugiat nisl"
                T.li => T.raw "Nulla at volutpat dola"
                T.li ".na", => T.raw "Pharetra massa"
                T.li ".na", => T.raw "Massa ultricies mi"
              T.div ".btn-wrap", =>
                T.a ".btn-buy", href: "#", => T.raw "Buy Now"
          T.div ".col-lg-3.col-md-6.mt-4.mt-md-0", =>
            T.div ".box.featured", "data-aos": "zoom-in", "data-aos-delay": "100", =>
              T.h3 => T.raw "Business"
              T.h4 =>
                T.sup => T.raw "$"
                T.raw "19"
                T.span => T.raw "/ month"
              T.ul =>
                T.li => T.raw "Aida dere"
                T.li => T.raw "Nec feugiat nisl"
                T.li => T.raw "Nulla at volutpat dola"
                T.li => T.raw "Pharetra massa"
                T.li ".na", => T.raw "Massa ultricies mi"
              T.div ".btn-wrap", =>
                T.a ".btn-buy", href: "#", => T.raw "Buy Now"
          T.div ".col-lg-3.col-md-6.mt-4.mt-lg-0", =>
            T.div ".box", "data-aos": "zoom-in", "data-aos-delay": "200", =>
              T.h3 => T.raw "Developer"
              T.h4 =>
                T.sup => T.raw "$"
                T.raw "29"
                T.span => T.raw "/ month"
              T.ul =>
                T.li => T.raw "Aida dere"
                T.li => T.raw "Nec feugiat nisl"
                T.li => T.raw "Nulla at volutpat dola"
                T.li => T.raw "Pharetra massa"
                T.li => T.raw "Massa ultricies mi"
              T.div ".btn-wrap", =>
                T.a ".btn-buy", href: "#", => T.raw "Buy Now"
          T.div ".col-lg-3.col-md-6.mt-4.mt-lg-0", =>
            T.div ".box", "data-aos": "zoom-in", "data-aos-delay": "300", =>
              T.span ".advanced", => T.raw "Advanced"
              T.h3 => T.raw "Ultimate"
              T.h4 =>
                T.sup => T.raw "$"
                T.raw "49"
                T.span => T.raw "/ month"
              T.ul =>
                T.li => T.raw "Aida dere"
                T.li => T.raw "Nec feugiat nisl"
                T.li => T.raw "Nulla at volutpat dola"
                T.li => T.raw "Pharetra massa"
                T.li => T.raw "Massa ultricies mi"
              T.div ".btn-wrap", =>
                T.a ".btn-buy", href: "#", => T.raw "Buy Now"
allMeta = []
htmlTitle = ""
module.exports.default = (new module.exports()).pricing