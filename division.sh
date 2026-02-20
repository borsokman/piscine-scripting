#!/usr/bin/env bash

# Regex to check for an optional negative sign followed by one or more digits
integer_regex='^-?[0-9]+$'

if [[ $# -ne 2 ]]; then
    echo "Error: two numbers must be provided"
    exit 1
# Check if both arguments are valid integers
elif ! [[ $1 =~ $integer_regex ]] || ! [[ $2 =~ $integer_regex ]]; then
    echo "Error: both arguments must be integers"
    exit 1
# Check for division by zero
elif [[ $2 -eq 0 ]]; then
    echo "Error: division by zero is not allowed"
    exit 1
else
    # Use BC_LINE_LENGTH=0 to handle very large numbers without line wrapping
    result=$(BC_LINE_LENGTH=0 bc <<< "$1 / $2")
    echo $result
fi