#! /bin/bash 
case $BUTTON in
    1) playerctl next spotify &;;
    2) notify-send "Play Next" &;;
    3) kitty -e nvim "$0" &;;
esac

temp=""
echo -e "$temp"