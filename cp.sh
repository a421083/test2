#!/bin/bash
cpdir=../../online/ecmall
while read line
do
path=$(dirname $line)
if [ ! -d $cpdir/$path ]; then 
    mkdir -p $cpdir/$path
fi
cp -rf $line $cpdir/$line 
#echo cp -rf $line $cpdir/$line

done < ./cp.txt
