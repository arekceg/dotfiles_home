#!/bin/sh
redshift -O 3100
wal -R
picom -b -c
dunst 2>&1>/dev/null & disown
~/.screenlayout/one_screen.sh
exec dwm
