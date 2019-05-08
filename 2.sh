#!/bin/bash

if [ -z $1 ]; then
	echo "At least one argument must be specified"
	exit 1
fi

awk '{a[i++]=$0} END {for (j=i-1; j>=0;) print a[j--] }' ${@:1}
