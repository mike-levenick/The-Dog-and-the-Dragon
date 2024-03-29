#!/bin/bash

# This is a little tool used to print the contents of inventory.

# Pass in the name as $1, so we can get the correct save file
name=$1

# Get the directory of the current script
script_dir="$(dirname "$0")"

# Get the save file location
savelocation="$script_dir/../../gamesaves/$name/inventory"

# List out all the items in the save file
# Read lines from file and put them into an array
IFS=$'\n' read -r -d '' -a items < <(cat "$savelocation" && printf '\0')

# Sort the array alphabetically
sorted_items=($(printf "%s\n" "${items[@]}" | sort))

# Print the header:
echo "Items that you have seen or that you currently carry:"
# Print the sorted array as a bulleted list
for item in "${sorted_items[@]}"; do
    echo -e "  - \e[31m$item\e[0m"
done