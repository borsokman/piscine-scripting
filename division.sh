#!/usr/bin/env bash

if [[ $# -ne 2 ]]; then
    echo "Error: two numbers must be provided"
    exit 0
elif ! [[ $1 =~ ^[0-9]+$ ]] || ! [[ $2 =~ ^[0-9]+$ ]]; then
    echo "Error: both arguments must be integers"
    exit 0
elif [[ $2 == 0 ]]; then
    echo "Error: division by zero is not allowed"
    exit 0
else
    result=$(echo "$1 / $2" | bc)
	echo "$result"
fi
