#!/bin/sh

FILE=text
TEMP=.$FILE$FILE$FILE

if [ -f $TEMP ]
then
	kill $(cat $TEMP)
	rm $TEMP
else
	echo "Temporary file not found, are you sure the process is running?"
fi
