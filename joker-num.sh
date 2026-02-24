#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "Only one argument"
    exit 1
elif ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo "Only numbers"
    exit 1
elif [[ $1 -gt 100 ]] || [[ $1 -lt 1 ]]; then
    echo "Error: wrong argument"
    exit 1
fi

sn=$1
count=0

while [[ $count -lt 5 ]]; do
tries=$((5 - count))
read -p "Enter your guess ($tries tries left): " guess

if ! [[ $guess =~ ^[0-9]+$ ]]; then
    echo "Only numbers"
    exit 1
elif [[ $guess -gt 100 ]] || [[ $guess -lt 1 ]]; then
    echo "Error: wrong argument"
    exit 1  
fi

((count++))

if [[ $guess -eq $sn ]]; then
    echo "Congratulations, you found the number in $count moves!"
    exit 0
elif [[ $guess -gt $sn ]]; then
    echo "Go down"
else
    echo "Go up"
fi
done

echo "You lost, the number was $sn" 
