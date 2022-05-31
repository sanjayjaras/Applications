#!/bin/bash
case $BUTTON in
	1) korganizer;;
	#2) notify-send "Pamac Update" "Click for update Right click for pacman";;
	#2) pamac-manager &;;
	3) kitty -e nvim "$0" &;;
esac

dt="$(date '+%b %d %a %I:%M%p')"
echo -e " $dt"
