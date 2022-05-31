#!/bin/bash
case $BUTTON in
	1) kitty -e topgrade &;;
	#2) notify-send "Pamac Update" "Click for update Right click for pacman";;
	2) pamac-manager &;;
	3) kitty -e nvim "$0" &;;
esac
variety -n | pkill variety &
cupd=$(checkupdates | wc -l | head -c3 )
echo -e "$cupd"