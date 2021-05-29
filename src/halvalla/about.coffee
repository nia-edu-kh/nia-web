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
  # section about
  # 
  about: =>
    T.section "#about.about", =>
      T.div ".container", =>
        T.div ".section-title", "data-aos": "zoom-out", =>
          T.h2 => T.raw "About"
          T.p => T.raw "Who we are"
        T.div ".content.row", "data-aos": "fade-up", =>
          T.div ".col-lg-6", =>
            T.p ".en", => T.raw """
The National Institute of Agriculture (NIA) is a leading agricultural education and research institution in Cambodia. We do this by --
"""
            T.p ".kh", => T.raw """
វិទ្យាស្ថានជាតិកសិកម្មព្រែកលៀប (ក ព ល) ជាស្ថាប័នអប់រំ និងស្រាវជ្រាវកសិកម្មឈានមុខគេនៅក្នុងប្រទេសកម្ពុជា។ យើងធ្វើវាដោយ
        --
"""
            T.ul =>
              T.li ".en", =>
                T.i ".ri-check-double-line"
                T.raw """
Providing innovative training towards critical thinking, practical experience and cooperation
"""
              T.li ".kh", =>
                T.i ".ri-check-double-line"
                T.raw """
ផ្តល់ការបណ្តុះបណ្តាលប្រកបដោយភាពច្នៃប្រឌិត ឆ្ពោះទៅរកការត្រិះរិះពិចារណា បទពិសោធន៍ជាក់ស្ដែង និងកិច្ចសហប្រតិបត្តិការ
"""
              T.li ".en", =>
                T.i ".ri-check-double-line"
                T.raw """
Encouraging research that contributes to knowledge building and policy making
"""
              T.li ".kh", =>
                T.i ".ri-check-double-line"
                T.raw """
ជំរុញការស្រាវជ្រាវ ដែលរួមចំណែកដល់ការកសាងចំណេះដឹង និងការបង្កើតគោលនយោបាយ
"""
              T.li ".en", =>
                T.i ".ri-check-double-line"
                T.raw "Building entrepreneurship and attitudes that effectively responsive to changes in the life and work"
              T.li ".kh", =>
                T.i ".ri-check-double-line"
                T.raw """
បង្កើតភាពជាសហគ្រិន និងឥរិយាបថដែលឆ្លើយតបប្រកបដោយប្រសិទ្ធភាពចំពោះការផ្លាស់ប្តូរជីវិតព្រមទាំងការងារ
"""
              T.li ".en", =>
                T.i ".ri-check-double-line"
                T.raw "Contributing to community development through social and cultural activities"
              T.li ".kh", =>
                T.i ".ri-check-double-line"
                T.raw """
ចូលរួមចំណែកអភិវឌ្ឍន៍សហគមន៍តាមរយៈសកម្មភាពសង្គម និងវប្បធម៌
"""
          T.div ".col-lg-6.pt-4.pt-lg-0", =>
            T.p ".en", => T.raw """
Our resources, facilities, staff and academics are committed to --
"""
            T.p ".kh", => T.raw """
ធនធាន សម្ភារៈបរិក្ខារ បុគ្គលិក និងអ្នកសិក្សារបស់យើងប្តេជ្ញាចិត្តទៅលើ
"""
            T.ul =>
              T.li ".en", =>
                T.i ".ri-check-double-line"
                T.raw "Our quality, innovation and creativity"
              T.li ".kh", =>
                T.i ".ri-check-double-line"
                T.raw """
គុណភាព ការឆ្នៃប្រឌិត​ និងការបង្កើតថ្មី
"""
              T.li ".en", =>
                T.i ".ri-check-double-line"
                T.raw "Valuing professional competence and critical thinking"
              T.li ".kh", =>
                T.i ".ri-check-double-line"
                T.raw """
ផ្តល់តម្លៃលើសមត្ថភាពវិជា្ជជីវៈ និងការត្រិះរិះពិចារណា
"""
              T.li ".en", =>
                T.i ".ri-check-double-line"
                T.raw "Communicating and working together with respect"
              T.li ".kh", =>
                T.i ".ri-check-double-line"
                T.raw """
ប្រាស្រ័យទាក់ទង និងធ្វើការជាមួយគ្នា​ប្រកបដោយការគោរព
"""
              T.li ".en", =>
                T.i ".ri-check-double-line"
                T.raw "Being accountable for actions to as we strive for destiny"
              T.li ".kh", =>
                T.i ".ri-check-double-line"
                T.raw """
ទទួលខុសត្រូវចំពោះសកម្មភាពរបស់ខ្លួន និងពុះពារដើម្បីជោគវាសនារបស់ខ្លួន
"""
            T.a ".btn-learn-more", href: "#", => T.raw "Learn More"
allMeta = []
htmlTitle = ""
module.exports.default = (new module.exports()).about