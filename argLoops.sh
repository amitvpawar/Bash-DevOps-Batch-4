#!/bin/bash
#This script is used to print all the arguments provided with script
i=1
for arg in "$@" #Use $* instead of $@ and see the difference
##Reason $* expands as a one string.
do
    echo "$i. Argument: $arg"
    let i++
done