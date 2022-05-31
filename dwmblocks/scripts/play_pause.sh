#! /bin/bash 
case $BUTTON in
    1) playerctl play-pause spotify &;;
    2) notify-send "Play Pause" &;;
    3) kitty -e nvim "$0" &;;
esac

temp="$(~/Applications/dwmblocks/scripts/get_spotify_status.sh --status)"
status=""
if [ "$temp" == "Playing" ]; then
  status=""
elif [ "$temp" == "Stopped" ]; then
  status=""
fi

echo " $status"
