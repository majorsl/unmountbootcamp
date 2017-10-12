#!/bin/sh
#version 1.0.2
#Unmounts BOOTCAMP from Desktop in macOS.

#Get the disk
BOOTCAMP=$(diskutil list | grep BOOTCAMP | awk '{ print substr($0,69,9) }')

if [ "$BOOTCAMP" = "" ]; then
	exit 0
fi

diskutil unmount /dev/"$BOOTCAMP"

exit 0
