#!/bin/bash

read -p "Enter a file or directory name: " item

# Check if it exists
if [ -e "$item" ]; then
    echo "✔ $item exists."

    # Check if regular file 
    if [ -f "$item" ]; then
        echo "→ It is a regular file."

    # Check if directory
    elif [ -d "$item" ]; then
        echo "→ It is a directory."
    fi

    # Check if empty
    if [ ! -s "$item" ]; then
        echo "→ It is empty."
    else 
        echo "→ It has data."
    fi

else
    echo "✘ $item does not exist."
fi
 
