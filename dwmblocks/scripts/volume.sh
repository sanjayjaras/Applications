#!/bin/bash
case $BUTTON in
	1) pavucontrol &;;
	#2) notify-send "Volume" "Click for Settings Right click for equalizer";;
	2) pulseaudio-equalizer-gtk;;
	3) kitty -e nvim "$0" &;;
	4) amixer -q -D pulse sset Master 5%+ &;;
	5) amixer -q -D pulse sset Master 5%- &;;
esac

mute="$(awk -F"[][]" '/Left:/ { print $4 }' <(amixer sget Master))"
if [[ $mute == "on" ]]; then
VOL="$(awk -F"[][]" '/Left:/ { print $2 }' <(amixer sget Master))"
else
VOL="M"
fi

echo -e "$VOL"
