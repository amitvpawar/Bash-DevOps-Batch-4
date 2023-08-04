#!/bin/bash
echo "Enter the number of users you need to add"
read num
for ((  i=1; i<=$num; i++))
do
    read -p "Enter $i username: " username
    #read -sp " Enter Password for $1 user: $username" password
    sudo useradd -m $username
done
#if want to delete created users use [userdel -r username]