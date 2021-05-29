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
  # section testimonials
  # 
  testimonials: =>
    T.section "#testimonials.testimonials", =>
      T.div ".container", =>
        T.div ".section-title", "data-aos": "zoom-out", =>
          T.h2 => T.raw "Testimonials"
          T.p => T.raw "What they are saying about us"
        T.div ".owl-carousel.testimonials-carousel", "data-aos": "fade-up", =>
          T.div ".testimonial-item", =>
            T.p =>
              T.i ".bx.bxs-quote-alt-left.quote-icon-left"
              T.raw """
Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
"""
              T.i ".bx.bxs-quote-alt-right.quote-icon-right"
            T.img ".testimonial-img", src: "assets/img/testimonials/testimonials-1.jpg", alt: ""
            T.h3 => T.raw "Saul Goodman"
            T.h4 => T.raw "Ceo &amp; Founder"
          T.div ".testimonial-item", =>
            T.p =>
              T.i ".bx.bxs-quote-alt-left.quote-icon-left"
              T.raw """
Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
"""
              T.i ".bx.bxs-quote-alt-right.quote-icon-right"
            T.img ".testimonial-img", src: "assets/img/testimonials/testimonials-2.jpg", alt: ""
            T.h3 => T.raw "Sara Wilsson"
            T.h4 => T.raw "Designer"
          T.div ".testimonial-item", =>
            T.p =>
              T.i ".bx.bxs-quote-alt-left.quote-icon-left"
              T.raw """
Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
"""
              T.i ".bx.bxs-quote-alt-right.quote-icon-right"
            T.img ".testimonial-img", src: "assets/img/testimonials/testimonials-3.jpg", alt: ""
            T.h3 => T.raw "Jena Karlis"
            T.h4 => T.raw "Store Owner"
          T.div ".testimonial-item", =>
            T.p =>
              T.i ".bx.bxs-quote-alt-left.quote-icon-left"
              T.raw """
Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
"""
              T.i ".bx.bxs-quote-alt-right.quote-icon-right"
            T.img ".testimonial-img", src: "assets/img/testimonials/testimonials-4.jpg", alt: ""
            T.h3 => T.raw "Matt Brandon"
            T.h4 => T.raw "Freelancer"
          T.div ".testimonial-item", =>
            T.p =>
              T.i ".bx.bxs-quote-alt-left.quote-icon-left"
              T.raw """
Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.
"""
              T.i ".bx.bxs-quote-alt-right.quote-icon-right"
            T.img ".testimonial-img", src: "assets/img/testimonials/testimonials-5.jpg", alt: ""
            T.h3 => T.raw "John Larson"
            T.h4 => T.raw "Entrepreneur"
allMeta = []
htmlTitle = ""
module.exports.default = (new module.exports()).testimonials