#!/bin/bash

DIR="/opt/131224-wdm"

FILES=$(find "$DIR" -type f -name "*.sh")

if [ -n "$FILES" ]; then
    echo "Files *.sh found in directory $DIR:"
    echo "$FILES"

for FILE in $FILES; do
        chmod +x "$FILE"
        echo ": $FILE"
        echo "Added execution permissions for file: $FILE"
    done
else
    echo "No files with .sh extension were found in directory $DIR."
fi
