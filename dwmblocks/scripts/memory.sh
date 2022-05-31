#!/bin/bash
case $BUTTON in
	1) notify-send "🧠 Memory hogs" "$(ps axch -o cmd:15,%mem --sort=-%mem | head)" &;;
        #2) notify-send "🧠 Memory module" "\- Shows Memory Used.";;
	2) kitty -e btop &;;
	3) kitty -e nvim "$0" &;;
esac

mem="$(free -h | awk '/^Mem/ { print $3 }' | sed s/i//g)"
echo -e "$mem"
