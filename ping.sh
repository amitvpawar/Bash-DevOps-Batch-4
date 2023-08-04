#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Provide Exactly one argument"
    exit 1
fi
var=$1
REGEX="[1-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[[:digit:]]{1,3}"
#REGEX="[1-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"
if ! [[ $var =~ $REGEX ]]; then
    echo "No IP provided"
    exit 2
fi
IP=${BASH_REMATCH[0]}
echo "$IP"
ping -c4 $IP
if [ $? -eq 0 ]; then
    Status=Alive
else
    Status=Dead
fi
echo "IP found: $IP is ($Status)"