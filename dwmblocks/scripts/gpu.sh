#!/bin/bash
case $BUTTON in
	1) notify-send "🧠 GPU Details" "$(nvidia-smi)" &;;
	2) kitty -e nvidia-settings &;;
	3) kitty -e nvim "$0" &;;
esac

GPU="$(nvidia-smi|awk 'NR==10{print substr($3,1,2)}')°C"
echo -e "$GPU"