#!/bin/bash

words=$(tr -c '[:alpha:]' '\n' < input.txt | tr 'A-Z' 'a-z')

longest=$(echo "$words" | awk '{print length, $0}' | sort -nr | head -1 | cut -d" " -f2)
shortest=$(echo "$words" | awk '{print length, $0}' | sort -n | head -1 | cut -d" " -f2)
average=$(echo "$words" | awk '{sum+=length; count++} END {print sum/count}')
unique=$(echo "$words" | sort | uniq | wc -l)

echo "Longest word: $longest"
echo "Shortest word: $shortest"
echo "Average word length: $average"
echo "Total unique words: $unique"
