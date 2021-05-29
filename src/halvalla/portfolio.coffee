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
  # section portfolio
  # 
  portfolio: =>
    T.section "#portfolio.portfolio", =>
      T.div ".container", =>
        T.div ".section-title", "data-aos": "zoom-out", =>
          T.h2 => T.raw "Portfolio"
          T.p => T.raw """
What we've done
"""
        @portfolio_flters()
        T.div ".portfolio-container.row", "data-aos": "fade-up", =>
          T.div ".col-lg-4.col-md-6.filter-app.portfolio-item", =>
            T.div ".portfolio-img", =>
              T.img ".img-fluid", src: "assets/img/portfolio/portfolio-1.jpg", alt: ""
            T.div ".portfolio-info", =>
              T.h4 => T.raw "App 1"
              T.p => T.raw "App"
              T.a ".preview-link.venobox", href: "assets/img/portfolio/portfolio-1.jpg", "data-gall": "portfolioGallery", title: "App 1", =>
                T.i ".bx.bx-plus"
              T.a ".details-link", href: "portfolio-details.html", title: "More Details", =>
                T.i ".bx.bx-link"
          T.div ".col-lg-4.col-md-6.filter-web.portfolio-item", =>
            T.div ".portfolio-img", =>
              T.img ".img-fluid", src: "assets/img/portfolio/portfolio-2.jpg", alt: ""
            T.div ".portfolio-info", =>
              T.h4 => T.raw "Web 3"
              T.p => T.raw "Web"
              T.a ".preview-link.venobox", href: "assets/img/portfolio/portfolio-2.jpg", "data-gall": "portfolioGallery", title: "Web 3", =>
                T.i ".bx.bx-plus"
              T.a ".details-link", href: "portfolio-details.html", title: "More Details", =>
                T.i ".bx.bx-link"
          T.div ".col-lg-4.col-md-6.filter-app.portfolio-item", =>
            T.div ".portfolio-img", =>
              T.img ".img-fluid", src: "assets/img/portfolio/portfolio-3.jpg", alt: ""
            T.div ".portfolio-info", =>
              T.h4 => T.raw "App 2"
              T.p => T.raw "App"
              T.a ".preview-link.venobox", href: "assets/img/portfolio/portfolio-3.jpg", "data-gall": "portfolioGallery", title: "App 2", =>
                T.i ".bx.bx-plus"
              T.a ".details-link", href: "portfolio-details.html", title: "More Details", =>
                T.i ".bx.bx-link"
          T.div ".col-lg-4.col-md-6.filter-card.portfolio-item", =>
            T.div ".portfolio-img", =>
              T.img ".img-fluid", src: "assets/img/portfolio/portfolio-4.jpg", alt: ""
            T.div ".portfolio-info", =>
              T.h4 => T.raw "Card 2"
              T.p => T.raw "Card"
              T.a ".preview-link.venobox", href: "assets/img/portfolio/portfolio-4.jpg", "data-gall": "portfolioGallery", title: "Card 2", =>
                T.i ".bx.bx-plus"
              T.a ".details-link", href: "portfolio-details.html", title: "More Details", =>
                T.i ".bx.bx-link"
          T.div ".col-lg-4.col-md-6.filter-web.portfolio-item", =>
            T.div ".portfolio-img", =>
              T.img ".img-fluid", src: "assets/img/portfolio/portfolio-5.jpg", alt: ""
            T.div ".portfolio-info", =>
              T.h4 => T.raw "Web 2"
              T.p => T.raw "Web"
              T.a ".preview-link.venobox", href: "assets/img/portfolio/portfolio-5.jpg", "data-gall": "portfolioGallery", title: "Web 2", =>
                T.i ".bx.bx-plus"
              T.a ".details-link", href: "portfolio-details.html", title: "More Details", =>
                T.i ".bx.bx-link"
          T.div ".col-lg-4.col-md-6.filter-app.portfolio-item", =>
            T.div ".portfolio-img", =>
              T.img ".img-fluid", src: "assets/img/portfolio/portfolio-6.jpg", alt: ""
            T.div ".portfolio-info", =>
              T.h4 => T.raw "App 3"
              T.p => T.raw "App"
              T.a ".preview-link.venobox", href: "assets/img/portfolio/portfolio-6.jpg", "data-gall": "portfolioGallery", title: "App 3", =>
                T.i ".bx.bx-plus"
              T.a ".details-link", href: "portfolio-details.html", title: "More Details", =>
                T.i ".bx.bx-link"
          T.div ".col-lg-4.col-md-6.filter-card.portfolio-item", =>
            T.div ".portfolio-img", =>
              T.img ".img-fluid", src: "assets/img/portfolio/portfolio-7.jpg", alt: ""
            T.div ".portfolio-info", =>
              T.h4 => T.raw "Card 1"
              T.p => T.raw "Card"
              T.a ".preview-link.venobox", href: "assets/img/portfolio/portfolio-7.jpg", "data-gall": "portfolioGallery", title: "Card 1", =>
                T.i ".bx.bx-plus"
              T.a ".details-link", href: "portfolio-details.html", title: "More Details", =>
                T.i ".bx.bx-link"
          T.div ".col-lg-4.col-md-6.filter-card.portfolio-item", =>
            T.div ".portfolio-img", =>
              T.img ".img-fluid", src: "assets/img/portfolio/portfolio-8.jpg", alt: ""
            T.div ".portfolio-info", =>
              T.h4 => T.raw "Card 3"
              T.p => T.raw "Card"
              T.a ".preview-link.venobox", href: "assets/img/portfolio/portfolio-8.jpg", "data-gall": "portfolioGallery", title: "Card 3", =>
                T.i ".bx.bx-plus"
              T.a ".details-link", href: "portfolio-details.html", title: "More Details", =>
                T.i ".bx.bx-link"
          T.div ".col-lg-4.col-md-6.filter-web.portfolio-item", =>
            T.div ".portfolio-img", =>
              T.img ".img-fluid", src: "assets/img/portfolio/portfolio-9.jpg", alt: ""
            T.div ".portfolio-info", =>
              T.h4 => T.raw "Web 3"
              T.p => T.raw "Web"
              T.a ".preview-link.venobox", href: "assets/img/portfolio/portfolio-9.jpg", "data-gall": "portfolioGallery", title: "Web 3", =>
                T.i ".bx.bx-plus"
              T.a ".details-link", href: "portfolio-details.html", title: "More Details", =>
                T.i ".bx.bx-link"
  # 
  # section portfolio-flters
  # 
  portfolio_flters: =>
    T.ul "#portfolio-flters.d-flex.justify-content-end", "data-aos": "fade-up", =>
      T.li ".filter-active", "data-filter": "*", => T.raw "All"
      T.li "data-filter": ".filter-app", => T.raw "App"
      T.li "data-filter": ".filter-card", => T.raw "Card"
      T.li "data-filter": ".filter-web", => T.raw "Web"
allMeta = []
htmlTitle = ""
module.exports.default = (new module.exports()).portfolio