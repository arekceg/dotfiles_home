#!/bin/bash
TICKETS="/home/aceglowski/workspace/tickets"
FOLDER_COUNT=$(ls $TICKETS | wc -l)
VERSION=$(ls -t $TICKETS | rofi -dmenu -i -p 'Select sprint or input ticket number' -width 40 -l $FOLDER_COUNT)

if [ $VERSION ]
then
		if [[ "$VERSION" =~ CS-[0-9]* ]]
		then
						ot $VERSION
  else
				FOLDER_COUNT=$(ls $TICKETS/"$VERSION" | wc -l)
				TICKET=$(echo -e "<< Back\n`ls -t $TICKETS/"$VERSION"/ | grep -aEo '(CS-[0-9]+.*)'`" | rofi -dmenu -i -p 'Select ticket' -l 10 -font "IBMPlexMono 15") 
				case $TICKET in
						"<< Back")
								open-ticket-rofi.sh
								;;
						*)
								if [ $TICKET ]
								then 
										echo Opening ticket $TICKET
										echo $TICKET		| awk -F _ '{ print $1 }'| sed 's/^/ https:\/\/team\-1586259836957\.atlassian\.net\/browse\//' | xargs -r xdg-open
								fi
								;;
				esac
		fi

fi
