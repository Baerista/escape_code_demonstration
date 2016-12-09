#!/bin/sh

FILE=$1

while [ 1 ]; do
	TEMP=$(head -1 $FILE)
	echo "]2;$TEMP\c"
	sed -i '' 1,0d $FILE
	echo "$TEMP" >> $FILE

	sleep .1
done
