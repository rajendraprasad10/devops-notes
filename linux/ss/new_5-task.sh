#!/bin/bash

read -p "Enter directory name: " dirname

if [ -z "$dirname" ]; then
    echo "Error: Directory name cannot be empty."
    exit 1
fi

if [ -d "$dirname" ]; then
    echo "Directory already exists."
else
    mkdir -p "$dirname"

    if [ $? -eq 0 ]; then
        echo "Directory created successfully."
    else
        echo "Failed to create directory."
    fi
fi