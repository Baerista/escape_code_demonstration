#!/bin/sh
#run "sh script_fcw.sh" to modify file_change_window

#printf preserves formatting of escape codes

#the window hack command has two key parts
#  \033]2; redirects to the window
#  \007    returns to normal text
printf "Here is some innocuous text with\033]2;YOU GOT HACKED\007 hacks in it." > file_changing_window
