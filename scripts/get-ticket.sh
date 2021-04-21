#!/bin/bash

if [ $# -eq 0 ]
		  then
						echo "No arguments passed"
						echo "The syntax is:"
						echo "gt <ticket>"
						exit 1
fi

TICKET=$(echo $1)
DIR=$(pwd)
echo $DIR
ADDRESS=https://team-1586259836957.atlassian.net/browse/$TICKET

echo "Fetching ticket title"
TITLE=$(curl -u arkadiusz.ceglowski@panek.eu:hfswUWwON6vcAHVwm58d46FF -s https://team-1586259836957.atlassian.net/rest/api/2/issue/$TICKET | jq ".fields.summary")
TITLE=${TITLE//\/ /}
TITLE=${TITLE//[\[\]]}
TITLE=${TITLE//-/}
TITLE=${TITLE//  / }
TITLE=${TITLE// /-}
TITLE=${TITLE//\"/}
TITLE=${TICKET}_${TITLE}

echo "Ticket title: $TITLE"

echo "Creating folder for $TICKET in $DIR"
mkdir -p $DIR/$TITLE
# Call script that creates notes
echo "Creating notes"
echo "$1 notes" > $DIR/$TITLE/$TITLE.md
echo "Creating a symlink to notes"
mkdir -p ~/workspace/notes/$TITLE/
ln -s $DIR/$TITLE/$TITLE.md ~/workspace/notes/$TITLE/$TITLE.md 


