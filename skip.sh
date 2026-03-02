#!/bin/bash

ls -l | grep -v '^total' | sed 'n;d'