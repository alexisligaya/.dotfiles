#!/bin/bash
UNAME=$1
if(( $UNAME == 'Linux'))
	echo "Operating system type is 'Linux'"
else
	echo "Error" >> linuxsetup.log
	exit
fi
