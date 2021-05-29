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
  # section contact
  # 
  contact: =>
    T.section "#contact.contact", =>
      T.div ".container", =>
        T.div ".section-title", "data-aos": "zoom-out", =>
          T.h2 => T.raw "Contact"
          T.p => T.raw "Contact Us"
        T.div ".mt-5.row", =>
          T.div ".col-lg-4", "data-aos": "fade-right", =>
            T.div ".info", =>
              T.div ".address", =>
                T.i ".icofont-google-map"
                T.h4 => T.raw "Location:"
                T.p => T.raw "A108 Adam Street, New York, NY 535022"
              T.div ".email", =>
                T.i ".icofont-envelope"
                T.h4 => T.raw "Email:"
                T.p => T.raw "info@example.com"
              T.div ".phone", =>
                T.i ".icofont-phone"
                T.h4 => T.raw "Call:"
                T.p => T.raw "+1 5589 55488 55s"
          T.div ".col-lg-8.mt-5.mt-lg-0", "data-aos": "fade-left", =>
            T.form ".php-email-form", action: "forms/contact.php", method: "post", role: "form", =>
              T.div ".form-row", =>
                T.div ".col-md-6.form-group", =>
                  @name()
                  T.div ".validate"
                T.div ".col-md-6.form-group", =>
                  @email()
                  T.div ".validate"
              T.div ".form-group", =>
                @subject()
                T.div ".validate"
              T.div ".form-group", =>
                T.textarea ".form-control", name: "message", rows: "5", "data-rule": "required", "data-msg": "Please write something for us", placeholder: "Message"
                T.div ".validate"
              T.div ".mb-3", =>
                T.div ".loading", => T.raw "Loading"
                T.div ".error-message"
                T.div ".sent-message", => T.raw "Your message has been sent. Thank you!"
              T.div ".text-center", =>
                T.button type: "submit", => T.raw "Send Message"
  # 
  # section subject
  # 
  subject: =>
    T.input "#subject.form-control", type: "text", name: "subject", placeholder: "Subject", "data-rule": "minlen:4", "data-msg": "Please enter at least 8 chars of subject"
  # 
  # section email
  # 
  email: =>
    T.input "#email.form-control", type: "email", name: "email", placeholder: "Your Email", "data-rule": "email", "data-msg": "Please enter a valid email"
  # 
  # section name
  # 
  name: =>
    T.input "#name.form-control", type: "text", name: "name", placeholder: "Your Name", "data-rule": "minlen:4", "data-msg": "Please enter at least 4 chars"
allMeta = []
htmlTitle = ""
module.exports.default = (new module.exports()).contact