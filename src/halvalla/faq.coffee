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
  # section faq
  # 
  faq: =>
    T.section "#faq.faq", =>
      T.div ".container", =>
        T.div ".section-title", "data-aos": "zoom-out", =>
          T.h2 => T.raw "F.A.Q"
          T.p => T.raw "Frequently Asked Questions"
        T.ul ".faq-list", =>
          T.li "data-aos": "fade-up", "data-aos-delay": "100", =>
            T.a "data-toggle": "collapse", class: "", href: "#faq1", =>
              T.raw "Non consectetur a erat nam at lectus urna duis?"
              T.i ".icofont-simple-up"
            @faq1()
          T.li "data-aos": "fade-up", "data-aos-delay": "200", =>
            T.a ".collapsed", "data-toggle": "collapse", href: "#faq2", =>
              T.raw "Feugiat scelerisque varius morbi enim nunc faucibus a pellentesque?"
              T.i ".icofont-simple-up"
            @faq2()
          T.li "data-aos": "fade-up", "data-aos-delay": "300", =>
            T.a ".collapsed", "data-toggle": "collapse", href: "#faq3", =>
              T.raw "Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi?"
              T.i ".icofont-simple-up"
            @faq3()
          T.li "data-aos": "fade-up", "data-aos-delay": "400", =>
            T.a ".collapsed", "data-toggle": "collapse", href: "#faq4", =>
              T.raw "Ac odio tempor orci dapibus. Aliquam eleifend mi in nulla?"
              T.i ".icofont-simple-up"
            @faq4()
          T.li "data-aos": "fade-up", "data-aos-delay": "500", =>
            T.a ".collapsed", "data-toggle": "collapse", href: "#faq5", =>
              T.raw "Tempus quam pellentesque nec nam aliquam sem et tortor consequat?"
              T.i ".icofont-simple-up"
            @faq5()
          T.li "data-aos": "fade-up", "data-aos-delay": "600", =>
            T.a ".collapsed", "data-toggle": "collapse", href: "#faq6", =>
              T.raw "Tortor vitae purus faucibus ornare. Varius vel pharetra vel turpis nunc eget lorem dolor?"
              T.i ".icofont-simple-up"
            @faq6()
  # 
  # section faq6
  # 
  faq6: =>
    T.div "#faq6.collapse", "data-parent": ".faq-list", =>
      T.p => T.raw """
Laoreet sit amet cursus sit amet dictum sit amet justo. Mauris vitae ultricies leo integer malesuada nunc vel. Tincidunt eget nullam non nisi est sit amet. Turpis nunc eget lorem dolor sed. Ut venenatis tellus in metus vulputate eu scelerisque. Pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus faucibus. Nibh tellus molestie nunc non blandit massa enim nec.
"""
  # 
  # section faq5
  # 
  faq5: =>
    T.div "#faq5.collapse", "data-parent": ".faq-list", =>
      T.p => T.raw """
Molestie a iaculis at erat pellentesque adipiscing commodo. Dignissim suspendisse in est ante in. Nunc vel risus commodo viverra maecenas accumsan. Sit amet nisl suscipit adipiscing bibendum est. Purus gravida quis blandit turpis cursus in
"""
  # 
  # section faq4
  # 
  faq4: =>
    T.div "#faq4.collapse", "data-parent": ".faq-list", =>
      T.p => T.raw """
Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui.
"""
  # 
  # section faq3
  # 
  faq3: =>
    T.div "#faq3.collapse", "data-parent": ".faq-list", =>
      T.p => T.raw """
Eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci. Faucibus pulvinar elementum integer enim. Sem nulla pharetra diam sit amet nisl suscipit. Rutrum tellus pellentesque eu tincidunt. Lectus urna duis convallis convallis tellus. Urna molestie at elementum eu facilisis sed odio morbi quis
"""
  # 
  # section faq2
  # 
  faq2: =>
    T.div "#faq2.collapse", "data-parent": ".faq-list", =>
      T.p => T.raw """
Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Id interdum velit laoreet id donec ultrices. Fringilla phasellus faucibus scelerisque eleifend donec pretium. Est pellentesque elit ullamcorper dignissim. Mauris ultrices eros in cursus turpis massa tincidunt dui.
"""
  # 
  # section faq1
  # 
  faq1: =>
    T.div "#faq1.collapse.show", "data-parent": ".faq-list", =>
      T.p => T.raw """
Feugiat pretium nibh ipsum consequat. Tempus iaculis urna id volutpat lacus laoreet non curabitur gravida. Venenatis lectus magna fringilla urna porttitor rhoncus dolor purus non.
"""
allMeta = []
htmlTitle = ""
module.exports.default = (new module.exports()).faq