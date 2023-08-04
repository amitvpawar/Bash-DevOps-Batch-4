#!/bin/bash
#This script only checks permissions of USER
if [ $# -ne 1 ]; then
	echo "Provide only one file name"
	exit 1
fi
file=$1
if [ -f $file ]; then
	VAR_READ="NO"  #default permissions
	VAR_WRITE="NO"
	VAR_EXE="NO"
	if [ -r $file ]; then 
		VAR_READ="YES" #check for Read permisssion
	fi
	if [ -w $file ]; then
		VAR_WRITE="YES" #check for Write permisssion
	fi
	if [ -x $file ]; then
		VAR_EXE="YES" #check for Execute permisssion
	fi
	echo " FILE name: $file have following permissions"
	echo "Read: $VAR_READ
Write: $VAR_WRITE      
Execute: $VAR_EXE"
#else
#	echo "$file does not exists!"
#fi
#If passing argument or file is present as directory then it prints file does not exist
#So to avoid that do following changes
else
	if [ -d $file ]; then
		echo "$file is a directory"
	else
		echo "FILE: $file does not exists"
	fi
fi
