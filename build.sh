#!/bin/sh

cd test || exit 1
sassc -l -t compact ../jottings.scss jottings.css
# send to my data dir
sed 's|{{jottings}}|/Users/a3/dv/jottings/test/jottings.css|' ../jottings.html \
    > "$HOME/.pandoc/templates/jottings.html"
# send to test for testing
sed 's|{{jottings}}|jottings.css|' ../jottings.html \
    > "jottings.temp"
pandoc --template=jottings.temp --toc -o "test.html" "test.md"
