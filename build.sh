#!/bin/sh

cd dist && sassc -l -t compact ../jottings.scss jottings.css
cd ../test || exit 1
sed 's|{{jottings}}|/Users/a3/dv/jottings/dist/jottings.css|' ../jottings.html \
    > "$HOME/.pandoc/templates/jottings.html"
pandoc --template=jottings.html --toc -o "test.html" "test.md"
