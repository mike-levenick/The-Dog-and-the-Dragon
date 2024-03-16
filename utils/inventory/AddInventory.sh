#!/bin/bash

# This is a little tool used to add items to inventory.

# Pass in the name as $1, so we can get the correct save file
name=$1

# Pass the item name as $2, so we can check for existence of the item
itemname=$2

# Get the directory of the current script
script_dir="$(dirname "$0")"

# Get the save file location
savelocation="$script_dir/../../gamesaves/$name/inventory"

echo "$itemname" >> $savelocation

echo -e "\e[31m$itemname\e[0m added to inventory."
echo -e "\e[33m⭒\e[0mProgress saved!\e[33m⭒\e[0m"