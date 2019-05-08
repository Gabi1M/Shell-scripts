#!/bin/bash

if [ -z $1]; then
	echo "Argument path missing"
	exit 1
fi

grep -r --include=\*.txt '' $1
