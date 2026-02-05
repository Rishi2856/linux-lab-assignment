#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Error: Please provide exactly one argument"
    exit 1
fi

if [ ! -e "$1" ]; then
    echo "Error: Path does not exist"
    exit 1
fi

if [ -f "$1" ]; then
    echo "Lines: $(wc -l < "$1")"
    echo "Words: $(wc -w < "$1")"
    echo "Characters: $(wc -c < "$1")"
elif [ -d "$1" ]; then
    echo "Total files: $(find "$1" -type f | wc -l)"
    echo ".txt files: $(find "$1" -type f -name "*.txt" | wc -l)"
fi
