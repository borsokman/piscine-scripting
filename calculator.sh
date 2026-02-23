#!/bin/bash

if [[ $# -ne 3 ]]; then
    echo "Error: expect 3 arguments"
    exit 1
elif [[ $3 == 0 ]]; then
    echo "Error: division by 0"
    exit 2
elif ! [[ $2 =~ ^[+*/-]$ ]]; then
    echo "Error: invalid operator"
    exit 3
elif ! [[ $1 =~ ^-?[0-9]+$ ]] || ! [[ $3 =~ ^-?[0-9]+$ ]]; then
    echo "Error: invalid number"
    exit 4
fi

do_add() {
   echo $(( $1 + $2 ))
}

do_sub() {
    echo $(( $1 - $2 ))
}

do_mult() { 
    echo $(( $1 * $2 ))
}

do_divide() {
    echo $(( $1 / $2 ))
}

case $2 in 
    +)
        do_add "$1" "$3"
        ;;
    -)
        do_sub "$1" "$3"
        ;;
    \*)
        do_mult "$1" "$3"
        ;;
    /)
        do_divide "$1" "$3"
        ;;
esac