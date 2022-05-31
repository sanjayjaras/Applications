#!/bin/sh
#xrandr --output HDMI-0 --primary --mode 2560x1080 --pos 1920x0 --rotate normal --output DP-0 --off --output DP-1 --off --output DP-2 --off --output DP-3 --mode 1920x1080 --pos 0x0 --rotate normal --output DP-4 --off --output DP-5 --off
xrandr --output DP-3 --mode 1920x1080 --rate 60.00 --output HDMI-0 --mode 2560x1080 --rate 74.99 --right-of DP-3
