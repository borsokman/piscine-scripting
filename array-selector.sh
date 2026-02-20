#!/bin/bash

if [[ $# -ne 1 ]]; then
echo "The number of arguments provided is not exactly one."
exit 0
elif ! [[ $1 =~ ^[0-9]+$ ]]; then
echo "The argument provided is not a number."
exit 0
elif [[ $1 > 5 ]]; then
echo "The number provided is outside the valid range of array indices."
exit 0
fi

array=("red" "blue" "green" "white" "black")

echo ${array[$1-1]}
