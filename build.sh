#!/bin/sh

sass jottings.scss:dist/jottings.css
cp jottings.html ~/.pandoc/templates/
# pandoc --template=jottings.html --toc -o "test/test.html" "test/test.md"
