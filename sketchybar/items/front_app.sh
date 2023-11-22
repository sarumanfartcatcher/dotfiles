#!/usr/bin/env bash

front_app=(
    icon.background.drawing=on
    display=active
    script="$PLUGINS/front_app.sh"
    click_script="open -a 'Mission Control'"
)

sketchybar --add item front_app left         \
    --set front_app "${front_app[@]}" \
    --subscribe front_app front_app_switched
