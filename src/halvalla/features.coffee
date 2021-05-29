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
  # section features
  # 
  features: =>
    T.section "#features.features", =>
      T.div ".container", =>
        T.ul ".d-flex.nav.nav-tabs.row", =>
          T.li ".col-3.nav-item", "data-aos": "zoom-in", =>
            T.a ".active.nav-link.show", "data-toggle": "tab", href: "#tab-1", =>
              T.i ".ri-gps-line"
              T.h4 ".d-lg-block.d-none", =>
                T.span => T.raw "&nbsp;"
                T.span ".enx", => T.raw """
Facilities
"""
                T.span ".khx", => T.raw """
គ្រឿងបរិក្ខារ
"""
          T.li ".col-3.nav-item", "data-aos": "zoom-in", "data-aos-delay": "100", =>
            T.a ".nav-link", "data-toggle": "tab", href: "#tab-2", =>
              T.i ".ri-body-scan-line"
              T.h4 ".d-lg-block.d-none", =>
                T.span => T.raw "&nbsp;"
                T.span ".enx", => T.raw """
Departments
"""
                T.span ".khx", => T.raw """
ដេប៉ាតឺម៉ង់
"""
          T.li ".col-3.nav-item", "data-aos": "zoom-in", "data-aos-delay": "200", =>
            T.a ".nav-link", "data-toggle": "tab", href: "#tab-3", =>
              T.i ".ri-sun-line"
              T.h4 ".d-lg-block.d-none", =>
                T.span => T.raw "&nbsp;"
                T.span ".enx", => T.raw """
Research
"""
                T.span ".khx", => T.raw """
ស្រាវជ្រាវ
"""
          T.li ".col-3.nav-item", "data-aos": "zoom-in", "data-aos-delay": "300", =>
            T.a ".nav-link", "data-toggle": "tab", href: "#tab-4", =>
              T.i ".ri-store-line"
              T.h4 ".d-lg-block.d-none", =>
                T.span => T.raw "&nbsp;"
                T.span ".enx", => T.raw """
Partnerships
"""
                T.span ".khx", => T.raw """
ភាពជាដៃគូ
"""
        T.div ".tab-content", "data-aos": "fade-up", =>
          @tab_1()
          @tab_2()
          @tab_3()
          @tab_4()
  # 
  # section tab-4
  # 
  tab_4: =>
    T.div "#tab-4.tab-pane", =>
      T.div ".row", =>
        T.div ".col-lg-6.mt-3.mt-lg-0.order-2.order-lg-1", =>
          T.h3 => T.raw "Omnis fugiat ea explicabo sunt dolorum asperiores sequi inventore rerum"
          T.p => T.raw """
Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
              velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
              culpa qui officia deserunt mollit anim id est laborum
"""
          T.p ".font-italic", => T.raw """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
              magna aliqua.
"""
          T.ul =>
            T.li =>
              T.i ".ri-check-double-line"
              T.raw "Ullamco laboris nisi ut aliquip ex ea commodo consequat."
            T.li =>
              T.i ".ri-check-double-line"
              T.raw "Duis aute irure dolor in reprehenderit in voluptate velit."
            T.li =>
              T.i ".ri-check-double-line"
              T.raw "Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate trideta storacalaperda mastiro dolore eu fugiat nulla pariatur."
        T.div ".col-lg-6.order-1.order-lg-2.text-center", =>
          T.img ".img-fluid", src: "assets/img/features-4.png", alt: ""
  # 
  # section tab-3
  # 
  tab_3: =>
    T.div "#tab-3.tab-pane", =>
      T.div ".row", =>
        T.div ".col-lg-6.mt-3.mt-lg-0.order-2.order-lg-1", =>
          T.h3 =>
            T.span ".en", => T.raw """
Research happens every moment
"""
            T.span ".kh", => T.raw """
Research happens every moment
"""
            T.comment """
'span template
              <span class="en">
              </span>
              <span class="kh">
              </span>'
"""
          T.p =>
            T.span ".en", => T.raw """
Research opportunities and activities happen all over out campus. Research makes the wonders of nature available as the wonders of man.
                From the rare albino water waterbuffalo to the new dairy facilities. 
                From the demands of specific techniques for a single tree, to the wonders of the largest palms.
                These things that makes nature so powerful are here for you to explore.
"""
            T.span ".kh", => T.raw """
Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
              velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
              culpa qui officia deserunt mollit anim id est laborum
"""
          T.ul =>
            T.span ".en", =>
              T.li =>
                T.i ".ri-check-double-line"
                T.raw "We have new experiments to improve the livestock industry of Cambodia"
            T.span ".kh", =>
              T.li =>
                T.i ".ri-check-double-line"
                T.raw """
Ullamco laboris nisi ut aliquip ex ea commodo consequat.
"""
            T.span ".en", =>
              T.li =>
                T.i ".ri-check-double-line"
                T.raw "We investigate cloning and grafting techniques to maximize success and yield"
            T.span ".kh", =>
              T.li =>
                T.i ".ri-check-double-line"
                T.raw """
Duis aute irure dolor in reprehenderit in voluptate velit.
"""
            T.span ".en", =>
              T.li =>
                T.i ".ri-check-double-line"
                T.raw "Our unique flora and fauna provide starting points for your own research"
            T.span ".kh", =>
              T.li =>
                T.i ".ri-check-double-line"
                T.raw """
Provident mollitia neque rerum asperiores dolores quos qui a. Ipsum neque dolor voluptate nisi sed
                .
"""
          T.p ".font-italic", =>
            T.span ".en", => T.raw """
Come explore the incredible opportunities to raise the wealth of Cambodia by your ideas and dedication.
"""
            T.span ".kh", => T.raw """

"""
        T.div ".col-lg-6.order-1.order-lg-2.text-center", =>
          T.img ".col-lg-5.img-fluid.p-1", src: "assets/img/dairy.jpeg", alt: ""
          T.img ".col-lg-5.img-fluid.p-1", src: "assets/img/research-technique.jpeg", alt: ""
          T.img ".col-lg-5.img-fluid.p-1", src: "assets/img/mascots.jpeg", alt: ""
          T.img ".col-lg-5.img-fluid.p-1", src: "assets/img/campus-walk.jpeg", alt: ""
  # 
  # section tab-2
  # 
  tab_2: =>
    T.div "#tab-2.tab-pane", =>
      T.div ".row", =>
        T.div ".col-lg-6.mt-3.mt-lg-0.order-2.order-lg-1", =>
          T.h3 =>
            T.span ".en", => T.raw """
Our Departments
"""
            T.span ".kh", => T.raw """
ដេប៉ាតឺម៉ង់របស់យើង
"""
          T.p =>
            T.span ".en", => T.raw """
The National Institute of Agriculture performs research and offers Associate Degree and Bachelor Degree in agricultural sciences through following departments:
"""
            T.span ".kh", =>
              T.raw """
វិទ្យាស្ថានជាតិកសិកម្មព្រែកលៀបធ្វើការស្រាវជ្រាវ និងផ្តល់សញ្ញាប័ត្របរិញ្ញាបត្ររងព្រមទាំងបរិញាបត្រវិទ្យាសាស្ត្រកសិកម្មតាមរយៈផ្នែកខាងក្រោម៖
"""
              T.comment """
'<br/>
                វិទ្យាស្ថានជាតិកសិកម្មធ្វើការស្រាវជ្រាវនិងផ្តល់សញ្ញាប័ត្ររងនិងបរិញ្ញាបត្រវិទ្យាសាស្ត្រកសិកម្មតាមរយៈផ្នែកខាងក្រោម៖'
"""
          T.comment """
'<p class="font-italic">
              <span class="en">
                Our Departments
              </span>
              <span class="kh">
                នាយកដ្ឋានរបស់យើង
              </span>
            </p>'
"""
          T.ul =>
            T.li =>
              T.i ".ri-check-double-line"
              T.span ".en", => T.raw """
College Preparatory Foundation Year
"""
              T.span ".kh", => T.raw """
ឆ្នាំត្រៀមមហាវិទ្យាល័យ
"""
              T.raw """
.
"""
            T.li =>
              T.i ".ri-check-double-line"
              T.span ".en", => T.raw """
Basic Science and Environment
"""
              T.span ".kh", => T.raw """
វិទ្យាសាស្ត្រមូលដ្ឋាននិងបរិស្ថាន
"""
              T.raw """
.
"""
            T.li =>
              T.i ".ri-check-double-line"
              T.span ".en", => T.raw """
Agricultural Science
"""
              T.span ".kh", => T.raw """
វិទ្យាសាស្ត្រកសិកម្ម
"""
              T.raw """
.
"""
            T.li =>
              T.i ".ri-check-double-line"
              T.span ".en", => T.raw """
Forestry Science
"""
              T.span ".kh", => T.raw """
វិទ្យាសាស្ត្រព្រៃឈើ
"""
              T.raw """
.
"""
            T.li =>
              T.i ".ri-check-double-line"
              T.span ".en", => T.raw """
Fisheries Science
"""
              T.span ".kh", => T.raw """
វិទ្យាសាស្ត្រជលផល
"""
              T.raw """
.
"""
            T.li =>
              T.i ".ri-check-double-line"
              T.span ".en", => T.raw """
Animal Science and Veterinary Medicine
"""
              T.span ".kh", => T.raw """
វិទ្យាសាស្ត្រសត្វនិងពេទ្យសត្វ
"""
              T.raw """
.
"""
            T.li =>
              T.i ".ri-check-double-line"
              T.span ".en", => T.raw """
Horticulture
"""
              T.span ".kh", => T.raw """
សាកវប្បកម្ម
"""
              T.raw """
.
"""
            T.li =>
              T.i ".ri-check-double-line"
              T.span ".en", => T.raw """
Agricultural Extension and Rural Development
"""
              T.span ".kh", => T.raw """
ការពង្រីកកសិកម្មនិងអភិវឌ្ឍន៍ជនបទ
"""
              T.raw """
.
"""
            T.li =>
              T.i ".ri-check-double-line"
              T.span ".en", => T.raw """
Agricultural Economics
"""
              T.span ".kh", => T.raw """
សេដ្ឋកិច្ចកសិកម្ម
"""
              T.raw """
.
"""
            T.li =>
              T.i ".ri-check-double-line"
              T.span ".en", => T.raw """
Food processing`
"""
              T.span ".kh", => T.raw """
កែច្នៃ​អាហារ
"""
              T.raw """
.
"""
            T.li =>
              T.i ".ri-check-double-line"
              T.span ".en", => T.raw """
Agricultural Engeneering
"""
              T.span ".kh", => T.raw """
វិស្វកម្មកសិកម្ម
"""
              T.raw """
.
"""
            T.li =>
              T.i ".ri-check-double-line"
              T.span ".en", => T.raw """
Information and Technology
"""
              T.span ".kh", => T.raw """
ព័ត៌មាន និងបច្ចេកវិទ្យា
"""
              T.raw """
.
"""
        T.div ".col-lg-6.order-1.order-lg-2.text-center", =>
          T.img ".img-fluid.p-1", src: "assets/img/planning.jpeg", alt: ""
          T.img ".img-fluid.p-1", src: "assets/img/foundation-year.jpeg", alt: ""
          T.img ".img-fluid.p-1", src: "assets/img/continuing-education.jpeg", alt: ""
  # 
  # section tab-1
  # 
  tab_1: =>
    T.div "#tab-1.active.show.tab-pane", =>
      T.div ".row", =>
        T.div ".col-lg-6.mt-3.mt-lg-0.order-2.order-lg-1", =>
          T.h3 =>
            T.span ".en", => T.raw """
Our campus reflects traditional and modern styles
"""
            T.span ".kh", => T.raw """
បរិវេណសាលាយើងឆ្លុះបញ្ចាំងពីរចនាបថបែបបុរាណ និងទំនើប
"""
          T.p ".font-italic", =>
            T.span ".en", => T.raw """
The National Institute of Agriculture is committed to continual improvement and modernization of our facilities to better support our students and mission
"""
            T.span ".kh", =>
              T.raw """
វិទ្យាស្ថានជាតិកសិកម្មព្រែកលៀបប្តេជ្ញាធ្វើឱ្យប្រសើរឡើងឥតឈប់ឈរ និងធ្វើទំនើបកម្មកន្លែងរបស់យើងដើម្បីគាំទ្រដល់និស្សិតព្រមទាំងបេសកកម្មរបស់យើងឱ្យកាន់តែប្រសើរឡើង
"""
              T.comment """
'<br/>
    វិទ្យាស្ថានជាតិកសិកម្មប្តេជ្ញាធ្វើឱ្យប្រសើរឡើងឥតឈប់ឈរនិងធ្វើទំនើបកម្មកន្លែងរបស់យើងដើម្បីគាំទ្រដល់និស្សិតនិងបេសកកម្មរបស់យើងឱ្យកាន់តែប្រសើរឡើង'
"""
          T.ul =>
            T.li =>
              T.i ".ri-check-double-line"
              T.span ".en", => T.raw """
Our class and administration buildings reflect traditional Cambodian architecture
"""
              T.span ".kh", => T.raw """
អគារថ្នាក់ និងអគាររដ្ឋបាលឆ្លុះបញ្ចាំងពីស្ថាបត្យកម្មប្រពៃណីរបស់កម្ពុជា
"""
            T.li =>
              T.i ".ri-check-double-line"
              T.span ".en", => T.raw """
Our library houses thousands of student research publications
"""
              T.span ".kh", => T.raw """
បណ្ណាល័យរបស់យើងមានសៀវភៅស្រាវជ្រាវរបស់និស្សិតរាប់ពាន់
"""
            T.li =>
              T.i ".ri-check-double-line"
              T.span ".en", => T.raw """
Our modern laboratory buildings house state of the art instruments
"""
              T.span ".kh", => T.raw """
អគារមន្ទីរពិសោធន៍ទំនើបរបស់យើងជារដ្ឋនៃឧបករណ៍សិល្បៈ
"""
          T.p =>
            T.span ".en", => T.raw """
Our buildings also contain large scale dairy and aquaponics facilities, as well as orchid and banana laboratories
"""
            T.span ".kh", => T.raw """
អគាររបស់យើងក៏មានកន្លែងដាក់ទឹកដោះគោ និងវារីវប្បកម្មខ្នាតធំក៏ដូចជាមន្ទីរពិសោធន៍ផ្កាអ័រគីដេ និងចេកផងដែរ
"""
        T.div ".col-lg-6.order-1.order-lg-2.text-center", =>
          T.img ".img-fluid.p-1", src: "assets/img/PNCA-_History-300x177.jpg", alt: ""
          T.img ".img-fluid.p-1", src: "assets/img/Lib1-300x200.jpg", alt: ""
          T.img ".img-fluid.p-1", src: "assets/img/PNCA_Lab-300x200.jpg", alt: ""
allMeta = []
htmlTitle = ""
module.exports.default = (new module.exports()).features