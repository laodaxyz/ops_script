#!/bin/sh
dname=$1
if [ ! $dname ]; then
    echo 'missing parameter'
    exit 1
fi
##
list=$(ls)
for file in $list; do
    if [ $file != 'filesmake.sh' ]; then
        distance="./$file/$dname"
        if [ ! -d $distance ]; then
            mkdir $distance
        fi
    fi
done
