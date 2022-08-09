#!/bin/bash
# This script make a copy of file into /tmp directory
# Usage: ./file-backup.sh
read -p "Enter a file name: " USER_INPUT_FILE
if [ -f $USER_INPUT_FILE ]
then
        BACK="/tmp/$(basename ${USER_INPUT_FILE}).$(date +%F).$$"
        echo "Backing up $USER_INPUT_FILE to ${BACK}"
        cp $USER_INPUT_FILE $BACK
        if [ $? -eq 0 ]
        then
                echo "Backup succeeded!"
        fi
else
	echo "No such file."
	exit 1	
fi
