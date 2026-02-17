#!/bin/bash

# stat -f "%Sp %Sm %N" -t "%Y-%m-%d %H:%M" hard-perm/*

ls -l --time-style="+%Y-%m-%d %H:%M" | sed 1d | awk '{print $1, $6, $7, $8}'