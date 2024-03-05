#!/bin/bash

# Pass in the name as $1, so we can get the correct save file
name=$1

# Get the directory of the current script
script_dir="$(dirname "$0")"

# Get the save file location
savelocation="$script_dir/../../gamesaves/$name"

# This is a bit inelegant, but it felt like a good time to introduce `awk`, which is
# a requirement of the assignment.

# Set the field separator to '-' and parse the file, populating variables as we go.
# Read the file using awk and assign values to variables
read_chapter=$(awk -F ' - ' '/Current chapter/ {print $2}' "$savelocation")

# Assign values to Bash variables, removing leading/trailing whitespace
chapter=$(echo "$read_chapter" | tr -d '[:space:]')

if [[ "$2" == "number" ]]; then
    # Strip off non-integer characters
    chapternumber=$(echo "$chapter" | tr -cd '[:digit:]')
    echo $chapternumber
else
    echo $chapter
fi
