#!/bin/bash

for file in *.sh
do
    mv "$file" "new_$file"
done

echo "All files renamed successfully."