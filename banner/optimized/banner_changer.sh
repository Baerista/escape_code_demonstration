#!/bin/sh
#banner_changer.sh

FILE=.banner_input
TEXT="in order to understand recursion you must first understand recursion "

if [ -f $FILE ];
then
	while [ -f $FILE ]; do

		echo "]2;~>)$(cat $FILE)(<~\c"
		TEMP=$(head -c 1 $FILE)

		#TODO LIST
		#add a maximum cap, no sense in displaying a banner wider than 80 characters
		#maybe find a way to display a substring of the total text?
		#
		
		dd if="$FILE" of="$FILE~" bs=1 skip=1 &> /dev/null
		mv "$FILE~" "$FILE"
		echo "$TEMP\c" >> "$FILE"
		sleep .1
	done
	echo "process terminated?"
	exit
else
	echo "Input file $FILE not found, creating it."
	echo "Default text is >$TEXT<"
	echo "$TEXT" > "$FILE"
	sh start.sh
fi
exit
