#!/bin/bash
# create new section for inclusion intoo NIA web site

echo "CREATING section $2.htm from $1.html"
cat ./src/parts/$1-section.html | sed -e "s/$1/$2/g" >./src/parts/$2-section.htm