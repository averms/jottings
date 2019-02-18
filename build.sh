#!/bin/sh

cd test || exit 1
testdir="$(pwd)"

sassc --style expanded ../jottings.scss jottings.css
# sassc --style expanded ../jottings.scss | csso -o jottings.css

# send to my data dir
sed "s|{{jottings}}|${testdir}/jottings.css|" ../jottings.html \
    >"$HOME/.pandoc/templates/jottings.html"

# send to test for testing
sed 's|{{jottings}}|jottings.css|' ../jottings.html \
    >jottings.temp

pandoc --template jottings.temp --toc -o "test.html" "test.md"
cp test.html ../docs/index.html
cp jottings.css ../docs/jottings.css
