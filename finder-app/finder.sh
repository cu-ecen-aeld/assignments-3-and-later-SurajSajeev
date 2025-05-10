#!/bin/bash
# Script for assignment app
# Author: Suraj Sajeev

if [ $# -eq 2 ]
then
    filesdir=$1
    searchstr=$2
    #check if the file exists or not.
    if [ -d $filesdir ]
    then
        grbg=""
    else
        exit 1
    fi
    x=$(grep -R -m 1 "$searchstr" $filesdir | wc -l);
    y=$(grep -R "$searchstr" $filesdir | wc -l);
    echo "The number of files are $x and the number of matching lines are $y"
else
    exit 1
fi