#!/bin/bash
case $BUTTON in
    1) notify-send "🖥 CPU hogs" "$(ps axch -o cmd:15,%cpu --sort=-%cpu | head)\\n(100% per core)" ;;
    2) kitty -e btop &;;
	  3) kitty -e nvim "$0" &;;
esac

TEMP="$(sensors|awk '/Tctl/{print substr($2,2,2)}')°C"
echo -e  "$TEMP"