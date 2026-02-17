#!/bin/bash

MY_MESSAGE="Hello World"
MY_NUM=100
MY_PI=3.142
MY_ARR=(one two three four five)
ARR_STRING=$(printf "%s, " "${MY_ARR[@]}")
ARR_STRING=${ARR_STRING%, }

printf "%s\n" "$MY_MESSAGE"
printf "%s\n" "$MY_NUM"
printf "%s\n" "$MY_PI"
printf "%s\n" "$ARR_STRING"