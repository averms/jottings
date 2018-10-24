#!/bin/sh

sass jottings.scss:dist/jottings.css
cp jottings.* ~/.pandoc/templates/
