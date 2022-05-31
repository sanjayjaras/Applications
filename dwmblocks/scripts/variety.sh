#!/bin/bash
case $BUTTON in
	1) variety -n &;;
    #1) echo "clicked";;
	#2) notify-send "Pamac Update" "Click for update Right click for pacman";;
	#2) ;;
	3) kitty -e nvim "$0" &;;
esac
sleep 1
variety -n | pkill variety &
echo -e " "
