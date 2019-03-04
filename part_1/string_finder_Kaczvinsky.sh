#!/bin/bash

#   string_finder_Kaczvinsky.sh filename string
#
#   Print a summary message of how many lines had the string and
#   the line numbers where the string was found, as well as the 
#   filename searched

echo "filename: $1"
lines=`grep -ne $2 $1 | cut -c 1 | awk '{print ($1)}'`
count = `$lines | wc -l`

echo "There are {$count} lines with $2 in it"
echo "These lines are :"
echo "$lines"
