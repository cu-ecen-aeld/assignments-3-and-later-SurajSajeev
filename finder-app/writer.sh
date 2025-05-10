#!/bin/bash
# Script for assignment app
# Author: Suraj Sajeev

if [ $# -eq 2 ]
then
    filesdir=$1
    inputtext=$2
    #check if the file exists or not.
    if [ -d $filesdir ]
    then
        exit 1
    fi
    mkdir -p `dirname $filesdir`
    echo $inputtext > "$filesdir"
else
    echo "enter required parameters...exiting"
    exit 1
fi