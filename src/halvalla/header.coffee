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
  # section header
  # 
  header: =>
    T.header "#header.align-items-center.d-flex.fixed-top.if.page==.{%", home": "", %}: "", "header-transparent": "", {%: "", endif: "", %}": "", =>
      T.div ".align-items-center.container.d-flex", =>
        T.div ".logo.mr-auto.pt-4", =>
          T.comment 'Uncomment below if you prefer to use an image logo'
          T.a ".pt-4", href: "index.html", =>
            T.img ".img-fluid", src: "assets/img/nia-logo.png", alt: ""
          T.button ".btn-xs.float-right", onclick: """
$('.kh').hide();$('.en').show()
""", => T.raw "English - អង់គ្លេស"
          T.button ".btn-xs.float-right", onclick: """
$('.en').hide(); $('.kh').show()
""", => T.raw "ភាសារខ្មែរ-  Khmer"
          T.h2 ".text-light", =>
            T.a href: "index.html", => T.raw "N I A"
        T.nav ".d-lg-block.d-none.nav-menu", =>
          T.ul =>
            T.li ".active", =>
              T.a href: "index.html", => T.raw "Home"
            T.li =>
              T.a href: "#about", => T.raw "About"
            T.li =>
              T.a href: "#services", => T.raw "Services"
            T.comment """
'<li><a href="#portfolio">Portfolio</a></li>
        <li><a href="#pricing">Pricing</a></li>'
"""
            T.li =>
              T.a href: "#team", => T.raw "Team"
            T.comment """
'<li class="drop-down"><a href="">Drop Down</a>
          <ul>
            <li><a href="#">Drop Down 1</a></li>
            <li class="drop-down"><a href="#">Drop Down 2</a>
              <ul>
                <li><a href="#">Deep Drop Down 1</a></li>
                <li><a href="#">Deep Drop Down 2</a></li>
                <li><a href="#">Deep Drop Down 3</a></li>
                <li><a href="#">Deep Drop Down 4</a></li>
                <li><a href="#">Deep Drop Down 5</a></li>
              </ul>
            </li>
            <li><a href="#">Drop Down 3</a></li>
            <li><a href="#">Drop Down 4</a></li>
            <li><a href="#">Drop Down 5</a></li>
          </ul>
        </li>'
"""
            T.li =>
              T.a href: "#contact", => T.raw "Contact"
        T.comment '.nav-menu'
allMeta = []
htmlTitle = ""
module.exports.default = (new module.exports()).header