#!/bin/sh
#finish.sh

FILE=.banner_input
TEMP=.banner_PID

if [ -f $TEMP ];
then
	VAR=$(cat $TEMP)
	rm $TEMP
	if ! kill $VAR > /dev/null 2>&1 ; then
		echo "PID $VAR does not exist."
		sh finish.sh
	else
		echo "Process $VAR killed."
	fi
elif [ -f $FILE ];
then
	echo "Removing banner text."
	rm $FILE
else
	echo "Temporary files not found, process is not running or in another directory?"
fi
echo "\033]2;~>) (<~\007\c"
exit
