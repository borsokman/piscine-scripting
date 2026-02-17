#!/bin/bash

find . -type f -name '*.txt' -exec basename {} \; | cut -d "." -f 1 