#!/bin/sh

FILE=text
OUTPUT=mass_text

if [ -f $FILE ] ;
then
	#number of lines in the file
	NUM=$(cat $FILE | wc -l)

	#number of characters displayed in a single line.
	#stay below the number of lines to avoid blank space
	LINE=$(($NUM / $((3))))
	((LINE *= 2))

	if [ -f $OUTPUT ];
	then
		rm $OUTPUT
	fi

	while [ $NUM \> 0 ]
	do 
		#copy X characters to a line and terminate with \n
		for X in $(seq 1 $LINE); do
			TEMP=$(head -$X $FILE | tail -1)
			echo "$TEMP\c" >> $OUTPUT
		done
		echo "" >> $OUTPUT

		#move the top of the file to the bottom
		TEMP_TOP=$(head -1 $FILE)
		sed -i '' 1,0d $FILE
		echo "$TEMP_TOP" >> $FILE

		echo "Completed line $NUM."
		(( NUM -= 1 ))
	done
else
	echo "Input file $FILE does not exist."
fi
