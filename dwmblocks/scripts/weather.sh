#!/bin/bash
case $BUTTON in
	1) brave https://openweathermap.org/city/5067114 > /dev/null &;;
	#2) notify-send "Pamac Update" "Click for update Right click for pacman";;
	#2) pamac-manager &;;
	3) kitty -e nvim "$0" &;;
esac

weather="$(python ~/Applications/dwmscripts/weather.py)"
echo -e "$weather"