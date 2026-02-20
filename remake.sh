#!/bin/bash

if [[ $# -ne 1 ]] || [[ ! -d $1 ]]; then
echo "Error"
exit 1
fi

touch -d "Jan 1 00:01" "$1/ciao" 
chmod 442 "$1/ciao"

mkdir -m 777 "$1/mamma"
touch -d "Jan 2 00:01" "$1/mamma"

touch -d "Jan 3 00:01" "$1/guarda"
chmod 400 "$1/guarda"

touch -d "Jan 4 00:01" "$1/come"
chmod 642 "$1/come"

mkdir -m 452 "$1/mi"
touch -d "Jan 5 00:01" "$1/mi"

touch -d "Jan 6 00:01" "$1/diverto"
chmod 421 "$1/diverto"