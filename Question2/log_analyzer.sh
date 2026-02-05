#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Error: Please provide log file name"
    exit 1
fi

if [ ! -r "$1" ]; then
    echo "Error: File does not exist or is not readable"
    exit 1
fi

total=$(wc -l < "$1")
info=$(grep -c "INFO" "$1")
warning=$(grep -c "WARNING" "$1")
error=$(grep -c "ERROR" "$1")
latest_error=$(grep "ERROR" "$1" | tail -n 1)

date=$(date +%Y-%m-%d)
report="logsummary_$date.txt"

{
echo "Total log entries: $total"
echo "INFO messages: $info"
echo "WARNING messages: $warning"
echo "ERROR messages: $error"
echo "Most recent ERROR:"
echo "$latest_error"
} > "$report"

cat "$report"
