#!/bin/bash
# Remove iccp chunk from png files
# Usage: ./.remove_iccp.sh Resources/Images
# pngcrush https://sourceforge.net/projects/pmt/files/pngcrush-executables/

IFS=$'\n'
[ "x$1" = "x" ] && exit 1
DIR=$1

for file in `\find $DIR -name '*.png'`; do
  #echo "${file}"
  pngcrush -warn -ow -rem iCCP "${file}"
done
