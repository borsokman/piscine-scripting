#!/bin/bash

ls | awk '!/\.txt$/' > filtered_files.txt
