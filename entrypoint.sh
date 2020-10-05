#!/bin/sh -l
set -e
echo "$1"
ls "$1"
cd $1
for f in ./*.*
do
  WIDTH=$(identify -format '%w' "$f")
  HEIGHT=$(identify -format '%h' "$f")
  if [ $WIDTH -gt $2 ] || [ $HEIGHT -gt $3 ] ; then
    echo "resize $f $2x$3"
    mogrify -path . -auto-orient -thumbnail "$2x$3" "$f"
  fi
done
