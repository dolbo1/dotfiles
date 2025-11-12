#!/bin/bash
HYPRLAPTOP=$(hyprctl getoption decoration:blur:enabled | awk 'NR==1{print $2}')
if [[ $HYPRLAPTOP == 1]]; then
    hyprctl notify 1 5000 "rgb(b0b846)" "Optimizations: ON"
    hyprctl keyword plugin:hyprbars:bar_blur false
    hyprctl keyword decoration:shadow:enabled false
    hyprctl keyword decoration:blur:enabled false
    hyprctl keyword misc:vfr true
    exit 0
else
    hyprctl notify 1 5000 "rgb(f2594b)" "Optimizations: OFF"
    hyprctl reload
    exit 0
fi
exit 1
