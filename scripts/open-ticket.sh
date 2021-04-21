#!/bin/bash
if [ $# -eq 0 ]
		  then
					 NAME=${PWD##*/}
				else 
						NAME=$1
fi
TICKET=$(echo $NAME | awk -F _ '{ print $1 }')
TICKET=${TICKET//[\[\]]}
ADDRESS=https://team-1586259836957.atlassian.net/browse/$TICKET
echo Opening $TICKET
CMD="echo $ADDRESS | xargs -r xdg-open"

eval "${CMD}" &>/dev/null & disown;
