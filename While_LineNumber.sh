#!/bin/bash
i=1
file=$1
while read line
do
    echo "$i: $line"
    let i++
done < "$file"