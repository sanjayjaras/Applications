#!/bin/bash

status=$(~/Applications/dwmblocks/scripts/get_spotify_status.sh --status)
prefix=""
if [[ $status == "Playing" ]]; then
prefix="奈"
msg=$(~/Applications/dwmblocks/scripts/get_spotify_status.sh 1 2)
msg=$(python ~/Applications/dwmblocks/scripts/get_random_split_text.py "$msg" 15)
result="$prefix$msg"
elif [[ $status == "Stopped" ]]; then
icon=""
elif [[ $status == "Paused" ]]; then
prefix=""
msg=$(~/Applications/dwmblocks/scripts/get_spotify_status.sh 1 2)
msg=$(python ~/Applications/dwmblocks/scripts/get_random_split_text.py "$msg" 15)
result="$prefix$msg"
fi
echo "$result"

#printf "%-15s" "$msg" | cut -c 1-15
