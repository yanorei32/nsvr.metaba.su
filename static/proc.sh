#!/bin/bash
convert -resize 1280x720 "$1" "$1.tmp.png"
cjpeg -optimize -quality 95 -smooth 33 "$1.tmp.png" > "$2"
rm "$1.tmp.png"
rm "$1"
