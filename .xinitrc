#!/bin/sh
redshift -O 3100
wal -R
picom -b -c
dunst 2>&1>/dev/null & disown
~/.screenlayout/one_screen.sh
export _JAVA_AWT_WM_NONREPARENTING=1
exec dwm
