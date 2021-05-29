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
  # section services
  # 
  services: =>
    T.section "#services.services", =>
      T.div ".container", =>
        T.div ".section-title", "data-aos": "zoom-out", =>
          T.h2 => T.raw "Services"
          T.p => T.raw "What we do offer"
        T.div ".row", =>
          T.div ".col-lg-4.col-md-6", =>
            T.div ".icon-box", "data-aos": "zoom-in-left", =>
              T.div ".icon", =>
                T.i ".la-basketball-ball.las", style: "color: #ff689b;"
              T.h4 ".title", =>
                T.a href: "", => T.raw "Bachelor Degree"
              T.p ".description.en", => T.raw """
Prek Leap National College of Agriculture (PNCA) offers a 4 years Bachelor Science in agricultural fields in following specializations:

          Agricultural Science
          Forestry Science
          Fishery Science
          Veterinary Medicine
          Animal Science
          Horticulture
          Agricultural Extension and Rural Development
          Agricultural Economics
          Agribusinesses
          Food processing
          Nutrition and Health
          Agricultural Engeneering and Rural Construction
          Casdastre and Land Management
          Computer
          English Language
          Micro-Finance
          Political Economy of Agriculture and Food
          The study program reflects the need of human resource development in agricultural sectors. The Bsc. study program consists of a number of compulsory subjects and some free elective subjects. In the final year, students are required to write a final report and do final examination to complete the course.

          GRADUATION REQUIREMENTS

          The Associate Degree study program consists of a number of compulsory subjects and some free elective subjects. In the final year, students are required to complete a 6 months research and write a thesis, then they have to defend their thesis in the final year to complete the course.

          The B.Sc program is required to complete 127 credits for 4 years with following arrangement:

          Foundation Year study program will focus on general agricultural knowledge, general science, computer and English
          Students will study specialization subjects which focus more on practical work and study tour
          students will complete a 6 months research and write a thesis, then they have to defend their thesis in the final year to complete the course.
          Successful students will qualify for “Bachelor Degree of Science”.
          ENROLLMENT REQUIREMENTS

          Students can be eligible or choose two different study schemes: government scholarship scheme and private paying scheme.

          A candidate is eligible for B.sc government scholarship scheme, if sh/he holds a high school certificate of applied year (selected by Ministry of Education, Youth and Sports)
          A candidate is eligible for B.sc private paying scheme, if sh/he holds a high school certificate of previous year before applied year, or Associate Degree Certificate or equivalence certificate.
          TUTOR FEE

          Students must spend annual cost for 1.600,000 riel or 8000.000 riel per semester.
"""
          T.div ".col-lg-4.col-md-6.mt-5.mt-md-0", =>
            T.div ".icon-box", "data-aos": "zoom-in-left", "data-aos-delay": "100", =>
              T.div ".icon", =>
                T.i ".la-book.las", style: "color: #e9bf06;"
              T.h4 ".title", =>
                T.a href: "", => T.raw "Dolor Sitema"
              T.p ".description", => T.raw "Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea .html files – We use the Nunjucks templating engine by Mozilla to create the .html files. It’s straightforward to use and comes with powerful features. One of the most useful features for us is the ability to split and include the repetitive parts of the pages like headers and footers. Check the full Nunjucks documentation. commodo consequat tarad limino ata"
          T.div "..col-lg-4.col-md-6.mt-5.mt-lg-0", =>
            T.div ".icon-box", "data-aos": "zoom-in-left", "data-aos-delay": "200", =>
              T.div ".icon", =>
                T.i ".la-file-alt.las", style: "color: #3fcdc7;"
              T.h4 ".title", =>
                T.a href: "", => T.raw "Sed ut perspiciatis"
              T.p ".description", => T.raw "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur"
          T.div ".col-lg-4.col-md-6.mt-5", =>
            T.div ".icon-box", "data-aos": "zoom-in-left", "data-aos-delay": "300", =>
              T.div ".icon", =>
                T.i ".la-tachometer-alt.las", style: "color:#41cf2e;"
              T.h4 ".title", =>
                T.a href: "", => T.raw "Magni Dolores"
              T.p ".description", => T.raw "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum"
          T.div ".col-lg-4.col-md-6.mt-5", =>
            T.div ".icon-box", "data-aos": "zoom-in-left", "data-aos-delay": "400", =>
              T.div ".icon", =>
                T.i ".la-globe-americas.las", style: "color: #d6ff22;"
              T.h4 ".title", =>
                T.a href: "", => T.raw "Nemo Enim"
              T.p ".description", => T.raw "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque"
          T.div ".col-lg-4.col-md-6.mt-5", =>
            T.div ".icon-box", "data-aos": "zoom-in-left", "data-aos-delay": "500", =>
              T.div ".icon", =>
                T.i ".la-clock.las", style: "color: #4680ff;"
              T.h4 ".title", =>
                T.a href: "", => T.raw "Eiusmod Tempor"
              T.p ".description", => T.raw "Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi"
allMeta = []
htmlTitle = ""
module.exports.default = (new module.exports()).services