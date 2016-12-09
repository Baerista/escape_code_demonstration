#!/bin/sh
#start.sh

FILE=.banner_PID
sh banner_changer.sh & echo $! > $FILE
