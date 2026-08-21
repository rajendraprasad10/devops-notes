#!/bin/bash

read -p "Enter file name: " file

if [ -f "$file" ]; then
    words=$(wc -w < "$file")
    echo "Total Words: $words"
else
    echo "File not found."
fi