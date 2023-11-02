#!/bin/sh
setxkbmap -layout  us,ara -variant ,digits -option grp:rctrl_rshift_toggle caps:escape &
xrandr --output HDMI-1 --mode 1400x900 &

nitrogen --restore &
picom &
sxhkd &
screenkey &

doas light -S 10 &

exec dwm
