#!/bin/sh

FILE=mass_text

if [ -f $FILE ]
then
	sh banner_changer.sh $FILE & echo $! > .$FILE$FILE$FILE
else
	echo "File $FILE not found"
fi
