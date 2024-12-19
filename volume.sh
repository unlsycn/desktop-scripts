#!/usr/bin/env bash

case "$1" in
--get) echo $(pamixer --get-volume-human) ;;
--inc) [[ "$(pamixer --get-mute)" == "true" ]] && pamixer --toggle-mute || pamixer -i 5 --allow-boost --set-limit 150 ;;
--dec) [[ "$(pamixer --get-mute)" == "true" ]] && pamixer --toggle-mute || pamixer -d 5 ;;
--toggle) pamixer --toggle-mute ;;
--mic-toggle) pamixer --default-source --toggle-mute ;;
--mic-inc) [[ "$(pamixer --default-source --get-mute)" == "true" ]] && pamixer --default-source --toggle-mute || pamixer --default-source -i 5 ;;
--mic-dec) [[ "$(pamixer --default-source --get-mute)" == "true" ]] && pamixer --default-source --toggle-mute || pamixer --default-source -d 5 ;;
*) echo $(pamixer --get-volume-human) ;;
esac
