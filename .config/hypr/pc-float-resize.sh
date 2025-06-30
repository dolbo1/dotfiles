#!/bin/bash

function findmatch {
    floating_windows=("kitty" "nemo" "nemo-preview-start" "viewnior")

    for item in "${floating_windows[@]}"; do
        if [[ $1 == $item ]]; then
            echo "Match found!"
        fi
    done
}

function handle {
    input=$1
    if [[ ${input:0:10} == "openwindow" ]]; then
        IFS=',' read -ra split_input <<< "${input:12}"
        if [[ $(findmatch ${split_input[2]}) == "Match found!" ]]; then
            hyprctl dispatch resizeactive exact 40% 60%
            hyprctl dispatch centerwindow
        fi
    fi
}

if [[ ! -d "/sys/class/power_supply/BAT0" ]]; then
    socat - "UNIX-CONNECT:$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock" | while read -r line; do handle "$line"; done
else
    exit 0
fi
