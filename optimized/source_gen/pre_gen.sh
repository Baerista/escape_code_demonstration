#!/bin/sh

FILE=text_line
OUTPUT=text

#number of bytes in the file
NUM=$(cat $FILE | wc -c)

if [ -f $FILE ] ;
then
	cp "$FILE" ".$FILE$FILE$FILE"

	if [ -f $OUTPUT ];
	then
		rm $OUTPUT
	fi

	while [ $NUM \> 0 ]
	do 
		TEMP=$(head -c 1 $FILE)
		echo "$TEMP" >> $OUTPUT
		dd if="$FILE" of="$FILE~" bs=1 skip=1
		mv "$FILE~" "$FILE"
		(( NUM -= 1 ))
	done

	mv ".$FILE$FILE$FILE" "$FILE"
else
	echo "Input file $FILE does not exist"
fi
