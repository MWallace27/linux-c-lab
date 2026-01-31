#!/bin/bash

read -p "Enter a filename: " FILE

if	
	[ -e "$FILE" ]; then
	echo "File exist. Details:"
	ls -l "$FILE"
else
	echo "file does not exist"
fi


