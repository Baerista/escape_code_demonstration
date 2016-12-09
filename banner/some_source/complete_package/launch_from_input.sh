#!/bin/sh

VAR=$1

echo "$VAR" > text_line
sh pre_gen.sh
sh generate.sh
sh start.sh
exit
