#!/usr/bin/env bash

if [[ $# -ne 2 ]]; then
    echo "Error: two numbers must be provided"
    exit 1
# Check if both arguments are valid integers
elif ! [[ $1 =~ ^-?[0-9]*\.?[0-9]+$ ]] || ! [[ $2 =~ ^-?[0-9]*\.?[0-9]+$ ]]; then
    echo "Error: both arguments must be integers"
    exit 1
# Check for division by zero
elif [[ $2 -eq 0 ]]; then
    echo "Error: division by zero is not allowed"
    exit 1
else
    result=$(echo "$1 / $2" | bc)

	# Output the result
	echo $result
fi