#!/bin/sh
CHOICE=$(echo -e 'Lock\nHibernate\nPoweroff\nReboot\nExit DWM\nCancel' | rofi -dmenu -theme "~/.cache/wal/colors-rofi-dark.rasi" -lines 6 -width 20 -i -p 'What to do?')

case $CHOICE in
				Hibernate)
					sudo systemctl hibernate
						;;
				Poweroff)
						poweroff
						;;
				Reboot)
						reboot
						;;
				Lock)
						slock
						;;
				"Exit DWM")
					 killall dwm
						;;
				Cancel)
						exit 0
						;;
		esac



