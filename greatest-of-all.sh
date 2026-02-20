#!/bin/bash

numbers=()
count=0

while [[ $count -lt 10 ]]; do
read -p "Enter a number: " n

if ! [[ $n =~ ^[0-9]+$ ]]; then
echo "ERROR: Invalid input only positive numerical characters are allowed"
continue

elif [[ $n -gt 10000 ]]; then
echo "ERROR: The number entered is too large"
continue
fi
numbers+=("$n")
((count++))
done

greatest=${numbers[0]}
for num in "${numbers[@]}"; do
    if (( num > greatest )); then
        greatest=$num
    fi
done

echo "The largest number is: $greatest"
