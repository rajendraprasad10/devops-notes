#!/bin/bash

echo "=============================="
echo "     FILE EXISTS CHECKER"
echo "=============================="

read -p "Enter the file path: " file

if [ -f "$file" ]; then
    echo "✅ File exists."
else
    echo "❌ File does not exist."
fi