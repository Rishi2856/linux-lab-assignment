#!/bin/bash

tr -c '[:alpha:]' '\n' < "$1" | tr 'A-Z' 'a-z' | grep -E '^[aeiou]+$' > vowels.txt
tr -c '[:alpha:]' '\n' < "$1" | tr 'A-Z' 'a-z' | grep -E '^[^aeiou]+$' > consonants.txt
tr -c '[:alpha:]' '\n' < "$1" | tr 'A-Z' 'a-z' | grep -E '^[^aeiou][a-z]*[aeiou]' > mixed.txt
