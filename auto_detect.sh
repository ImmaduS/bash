#!/bin/bash
# To analyse if there is a malware in the unix server using clamscan .


if clamscan -r /; then
	echo "There is a malware"
	exit 1

else
	echo "No malware"
	exit 0
fi

