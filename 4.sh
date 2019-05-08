#!/bin/bash

if [ -z $1 ]; then
	echo "At least one argument must be specified"
	exit 1
fi

j=0

j=$(awk ' /procedure/ {F[i++]=$2;}  END { for (f in F) print F[f] }' $1)

for i in $j
do
	k=$(awk " /$i/ {V[e]++;} END { for (f in V) print V[f]-1 }" $1)
	m=$(awk " /$i/ {V[i++]=NR} END { for (f=1;f<i;f++) print V[f] }" $1)
	echo "Procedure:" $i "appears" $k "times at lines:" $m
done
