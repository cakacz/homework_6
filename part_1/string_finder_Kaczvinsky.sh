#!/bin/bash

#   string_finder_Kaczvinsky.sh filename string
#
#   Print a summary message of how many lines had the string and
#   the line numbers where the string was found, as well as the 
#   filename searched

echo "filename: $1"
lines=cat $1 | grep -ne $2 | cut -c 1

echo "$2 was found
