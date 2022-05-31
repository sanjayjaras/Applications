#!/bin/bash
case $BUTTON in
	1) blueman-manager ;;
	2) nm-connection-editor ;;
	#2) notify-send "Network" "Click for Wifi Manager Right click Bluetooth Manager" &;;
	3) kitty -e nvim "$0" &;;
esac

speed="$(python ~/Applications/dwmblocks/scripts/net.py)"
echo -e "$speed"
