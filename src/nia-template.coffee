#
T = require 'halvalla'
global.T =T

module.exports = class niawebtemplate
  #pass the db entry into the class so that the classes have access to it
  constructor: (@db,@allDB)->
    return

  page: "home"
  #
  # section meta
  #
  meta: =>
        T.title => T.raw "The National Institute of Agriculture, Prek Leap, Phnom Penh, Cambodia"
        T.meta content: "", name: "descriptison"
        T.meta content: "", name: "keywords"

  #
  # section html
  #
  html: =>
    T.doctype 'html'
    T.html lang: "en", =>
      T.head =>
        T.meta charset: "utf-8"
        T.meta content: "width=device-width, initial-scale=1.0", name: "viewport"
        T.comment 'Favicons'
        T.link href: "assets/img/favicon.png", rel: "icon"
        T.link href: "assets/img/apple-touch-icon.png", rel: "apple-touch-icon"
        T.comment 'Google Fonts'
        T.link href: "https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i", rel: "stylesheet"
        T.comment 'Vendor CSS Files'
        T.comment 'Template Main CSS File'
        T.link href: "assets/css/style.css", rel: "stylesheet"
      T.body =>
        #Header()
        Hero.default()
        @main()
        T.comment 'End #main'
        T.a ".back-to-top", href: "#", =>
          T.i ".ri-arrow-up-line"
        T.comment 'Vendor JS Files'
        T.comment 'Template Main JS File'
        T.script src: "assets/js/main.js"
  #
  # section main
  #
  main: =>
    T.tag "main", "#main", =>
      AboutSection.default()
      #HappeningCarousel.default()
      FeaturesSection.default()
      BlogSection.default()
      CTASection.default()
      ServicesSection.default()
      PortfolioSection.default()
      TestimonialsSection.default()
      PricingSection.default()
      FAQSection.default()
      TeamSection.default()
      ContactSection.default()

#Header = require './halvalla/header.coffee'
Hero = require './halvalla/hero.coffee'
Footer = require './halvalla/footer.coffee'
AboutSection = require "./halvalla/about.coffee"
#HappeningCarousel = require "./halvalla/happening-carousel.coffee"
FeaturesSection = require "./halvalla/features.coffee"
BlogSection = require "./halvalla/blog.coffee"
CTASection = require "./halvalla/cta.coffee"
ServicesSection = require "./halvalla/services.coffee"
PortfolioSection = require "./halvalla/portfolio.coffee"
TestimonialsSection = require "./halvalla/testimonials.coffee"
PricingSection = require "./halvalla/pricing.coffee"
FAQSection = require "./halvalla/faq.coffee"
TeamSection = require "./halvalla/team.coffee"
ContactSection = require "./halvalla/contact.coffee"

allMeta = [[["charset","utf-8"]],[["content","width=device-width, initial-scale=1.0"],["name","viewport"]],[["content",""],["name","descriptison"]],[["content",""],["name","keywords"]]]
htmlTitle = "The National Institute of Agriculture, Prek Leap, Phnom Penh, Cambodia"
page = new  module.exports()
console.log T.render page.html
