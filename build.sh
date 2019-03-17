#!/bin/sh

set -e
cd test
testdir="$(pwd)"

sassc --style expanded ../jottings.scss jottings.css
# sassc --style expanded ../jottings.scss | csso -o jottings.css

# send to my data dir
sed "s|{{jottings}}|${testdir}/jottings.css|" ../jottings.html \
    >"$HOME/.local/share/pandoc/templates/jottings.html"

# send to test for testing
sed 's|{{jottings}}|jottings.css|' ../jottings.html \
    >jottings.temp

pandoc \
    -f markdown-fancy_lists-fenced_code_blocks-simple_tables-latex_macros+compact_definition_lists \
    --template jottings.temp --toc -o "test.html" "test.md"
cp test.html ../docs/index.html
cp jottings.css ../docs/jottings.css
