#!/bin/bash

MY_MESSAGE="Hello World"
MY_NUM=100
MY_PI=3.142
MY_ARR=(one two three four five)

echo -e "$MY_MESSAGE\n$MY_NUM\n$MY_PI\n$(IFS=, ; echo "${MY_ARR[*]}")"