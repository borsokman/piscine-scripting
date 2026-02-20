#!/usr/bin/env bash

# This regex only matches integers (e.g., 10, -5, 0)
# It will NOT match decimals (e.g., 0.5) or strings (e.g., "foo")
integer_regex='^-?[0-9]+$'

if [[ $# -ne 2 ]]; then
    echo "Error: two numbers must be provided"
    exit 1
# Check if both arguments are valid integers using the correct regex
elif ! [[ $1 =~ $integer_regex ]] || ! [[ $2 =~ $integer_regex ]]; then
    echo "Error: both arguments must be integers"
    exit 1
# Use arithmetic evaluation for the zero check, as it's for integers
elif [[ $2 -eq 0 ]]; then
    echo "Error: division by zero is not allowed"
    exit 1
else
    # Use BC_LINE_LENGTH=0 to handle very large numbers
    result=$(BC_LINE_LENGTH=0 bc <<< "$1 / $2")
    echo $result
fi