#!/usr/bin/env bash

hyprnome_opts="$1 -k"
[[ $(hyprctl activeworkspace | awk -F': ' '/windows/ {print $2}') == 0 ]] && hyprnome_opts+=" -c"

hyprnome ${hyprnome_opts}
