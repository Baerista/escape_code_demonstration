#!/bin/sh

FILE=text

if [ -f $FILE ]
then
	sh banner_changer $FILE & echo $! > .$FILE$FILE$FILE
else
	echo "File $FILE not found"
fi
