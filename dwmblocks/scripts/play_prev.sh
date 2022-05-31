#! /bin/bash 
case $BUTTON in
    1) playerctl previous spotify &;;
    2) notify-send "Play Previous" &;;
    3) kitty -e nvim "$0" &;;
esac

temp=""
echo -e "$temp"