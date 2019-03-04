#!/bin/bash

#   for_do_done.sh string
#
#   Print a summary message of how many lines had the string and
#   the line numbers where the string was found, as well as the 
#   filename searched

cd book_pages/

for i in *.txt;
do
    echo "filename: $i" >> output
    lines=`grep -ne $1 $i | cut -d ":" -f 1 | awk '{print $1}'`
    count=`grep -ce $1 $i | awk '{print ($1)}'`

    echo "There are $count lines with $1" >> output
    echo "These lines are :" >> output
    echo "$lines" >> output
done
