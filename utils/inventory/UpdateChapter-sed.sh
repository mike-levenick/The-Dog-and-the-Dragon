#!/bin/bash

# This is a little tool used to update the current chapter.
# Pass in name as $1 and new chapter as $2.

# Pass in the name as $1, so we can get the correct save file
name=$1

# Set the new value
newvalue=$2

# Get the directory of the current script
script_dir="$(dirname "$0")"

# Get the save file location
savelocation="$script_dir/../../gamesaves/$name"

sed -i '' "1s/-.*$/- $newvalue/" "$savelocation" # Old
#sed -i "s/Current chapter.*/Current Chapter - $newvalue/g" "$savelocation"

echo -e "\e[33m⭒\e[0mProgress saved!\e[33m⭒\e[0m"
