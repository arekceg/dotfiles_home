#!/bin/bash

DIR=~/workspace/notes
if [ ! -d "$DIR/$1" ]; 
then
  echo Creating directory $(pwd)/$1
		mkdir -p $DIR/$1
		echo Creating note file $1.md
		echo "$1 notes" > $DIR/$1/$1.md
		#gvim -v ~/workspace/notes/$1/$1.md
else
		echo Notes "$DIR/$1" already exist
fi


