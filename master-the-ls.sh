#!/bin/bash

ls -tu -p | grep -v '^\.' | tr '\n' ',' | sed 's/,$/\n/'
