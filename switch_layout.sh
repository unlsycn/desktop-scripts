#!/bin/env bash
LAYOUT=$(hyprctl -j getoption general:layout | jq '.str' | sed 's/"//g')

case $LAYOUT in
"master")
    hyprctl keyword general:layout dwindle
    notify-send -t 2000 "Layout" "Dwindle"
    ;;
"dwindle")
    hyprctl keyword general:layout master
    notify-send -t 2000 "Layout" "Master"
    ;;
*) ;;

esac
