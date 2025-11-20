#!/usr/bin/env bash

dir="$HOME/.config/rofi/launchers/type-4"
theme='style-2'

mode=${1:-drun} 

if [ "$mode" = "clipboard" ]; then
    rofi \
        -modi "clipboard:$HOME/.local/bin/cliphist-rofi-img" \
        -show clipboard \
        -show-icons \
        -theme "${dir}/${theme}.rasi"
else
    rofi \
        -show "$mode" \
        -theme "${dir}/${theme}.rasi"
fi

