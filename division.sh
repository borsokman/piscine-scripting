#!/usr/bin/env bash

if [[ $# -ne 2 ]]; then
    echo "Error: two numbers must be provided"
    exit 1
elif ! [[ $1 =~ ^[0-9]+$ ]] || ! [[ $2 =~ ^[0-9]+$ ]]; then
    echo "Error: both arguments must be integers"
    exit 1
elif [[ $2 == 0 ]]; then
    echo "Error: division by zero is not allowed"
    exit 1
else
    result=$(BC_LINE_LENGTH=0 bc <<< "$1 / $2")
    echo $result
fi
