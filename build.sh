#!/bin/sh

sass jottings.scss:dist/jottings.css
sed 's|{{jottings}}|/Users/a3/dv/jottings/dist/jottings.css|' "jottings.html" \
    > "$HOME/.pandoc/templates/jottings.html"
# pandoc --template=jottings.html --toc -o "test/test.html" "test/test.md"
