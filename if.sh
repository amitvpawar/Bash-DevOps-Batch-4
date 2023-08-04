#!/bin/bash
echo "Enter first number"
read num1
echo "Enter second number"
read num2
#if [[ $num1 = $num2 ]]; then
if [ "$num1" = "$num2" ]; then
echo "Equal"
else
echo "Not Equal"
fi