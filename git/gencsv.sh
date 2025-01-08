#!/bin/bash
start=$1
end=$2

# Check if arguments are passed
if [[ -z "$start" || -z "$end" ]]; then
    echo "Usage: ./gencsv.sh <start> <end>"
    exit 1
fi

echo "Generating file from $start to $end..."

# Loop to generate the file
for ((i=start; i<=end; i++)); do
    echo "$i, $((RANDOM % 1000))"
done > inputFile

echo "File generated: inputFile"


