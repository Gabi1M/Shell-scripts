#!/bin/bash

if [ -z $1 ]; then
	echo "Argument word missing"
	exit 1
fi

if [ ! -f $2 ]; then
	echo "There must be at least a file specified"
	exit 1
fi

sed "1,30{/$1/d}" ${@:2}
