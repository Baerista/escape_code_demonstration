#!/bin/sh

FILE=text
OUTPUT=mass_text

NUM_LINES=$(cat $FILE | wc -l)
MAX_LINE_LEN=$(($NUM_LINES / $((2))))
MAX_LINE_LEN=$(($MAX_LINE_LEN + $(($MAX_LINE_LEN / $((2))))))

rm $OUTPUT
while [ $NUM_LINES \> 0 ]
do 

	LINE_LEN=$MAX_LINE_LEN
	TOP_LINE=$(head -1 $FILE)

	for INDEX in $(seq 1 $MAX_LINE_LEN); do
		#echo "$INDEX  $LINE_LEN"
		TEMP=$(head -$INDEX $FILE | tail -1)
		echo "$TEMP\c" >> $OUTPUT
	done

	sed -i '' 1,0d $FILE
	echo "$TOP_LINE" >> $FILE
	echo "" >> $OUTPUT
	echo $NUM_LINES
	NUM_LINES=$(($NUM_LINES - $((1))))

done
