#!/bin/bash

if [[ $# -ne 1 ]]; then
echo "Error"
exit 0
elif ! [[ $1 =~ ^[0-9]+$ ]]; then
echo "Error"
exit 0
elif [[ $1 < 1 ]] || [[ $1 > 5 ]]; then
echo "Error"
exit 0
fi

array=("red" "blue" "green" "white" "black")

echo "${array[$1-1]}"
