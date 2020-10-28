#!/bin/sh
redshift -O 3100
wal -R
picom -b -c
dunst
~/.screenlayout/one_screen.sh
exec dwm
