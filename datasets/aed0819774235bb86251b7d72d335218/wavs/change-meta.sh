#!/bin/bash

# Ensure an input file is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file=$1
output_file="output.txt"

# Process each line
while IFS= read -r line; do
    # Extract f1, f2, and f3 (assuming f3 might contain multiple | characters)
    f1=$(echo "$line" | cut -d'|' -f1)
    f2=$(echo "$line" | cut -d'|' -f2)
    f3=$f2  # Set f3 to be the same as f2

    # Output the new format to a new file
    echo "$f1|$f2|$f3" >> "$output_file"
done < "$input_file"

echo "Transformation complete. Output written to $output_file"
