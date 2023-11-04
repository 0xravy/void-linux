#!/bin/sh
setxkbmap -layout  us,ara -variant ,digits -option grp:rctrl_rshift_toggle caps:escape &
xrandr --output HDMI-1 --mode 1600x900 &

nitrogen --restore &
picom &
sxhkd &
screenkey &

doas light -S 10 &


exec dbus-run-session dwm

