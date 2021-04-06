#!/bin/bash
setxkbmap -option caps:super
redshift -O 3400
wal -R
slstatus & disown
volumeicon & disown
xbanish & disown
flameshot & disown
nm-applet & disown
dunst 2>&1>/dev/null & disown

