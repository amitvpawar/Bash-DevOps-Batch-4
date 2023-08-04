#!/bin/bash
echo -n "Enter your name: "
read name
read -sp "Enter your Age: " age
echo "You have entered following"
echo "Name: $name" 
echo "Age: $age"
check=0
while [ $check -eq 0 ]
do
    echo "Is that correct? (yes/no)"
    read ans
case "$ans" in
"yes" )
    echo "Saving your info in $name.txt"s
    echo "Name: $name" >> $name.txt
    echo "Age: $age" >> $name.txt
    check=1
    ;;
"no" )
    echo "Nothing was saved. Please run again to save the correct data"
    check=1
    ;;
* )
    echo " Wrong ans provided. Provide yes or no"
    exit 1
    ;;
esac
done