#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory_path>"
    exit 1
fi

mkdir -p backup

for file in "$1"/*
do
    mv "$file" backup/ &
    echo "Moved $(basename "$file") with PID $!"
done

wait
echo "All background processes completed"
