#!/usr/bin/env sh

sketchybar --add item media right \
  --set media \
  script="$PLUGINS/media.sh" \
  updates=on \
  --subscribe media media_change
