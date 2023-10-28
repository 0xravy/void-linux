#!/bin/sh
setxkbmap -layout  us,ara -variant ,digits -option grp:rctrl_rshift_toggle caps:escape &

/usr/bin/nitrogen --restore &
/usr/bin/picom &
/usr/bin/sxhkd &
/usr/bin/screenkey &


exec dwm
