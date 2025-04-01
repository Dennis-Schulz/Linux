#!/bin/bash

SOURCE_DIR="/opt/131224-wdm/dennis/dennis_dir1/"
DEST_DIR="/opt/131224-wdm/dennis/dennis_dir2/"

for file in "$SOURCE_DIR"/*; do
    filename=$(basename "$file")
    if [[ $((filename % 2)) -eq 0 ]]; then
        mv "$file" "$DEST_DIR/"
    fi
done

