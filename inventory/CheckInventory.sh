#!/bin/bash

# This is a little tool used to check whether or not an item exists in inventory.
# It will return an exit code of either 0 or 1. 
# Although 0 is normally a "good" exit code, and non-0 exit codes are normally "bad",
# in this case, we are using it as an int representaiton of true/false for if the item is in inventory or not.

# Pass in the name as $1, so we can get the correct save file
name=$1

# Pass the item name as $2, so we can check for existence of the item
itemname=$2

# Get the directory of the current script
script_dir="$(dirname "$0")"

# Get the save file location
savelocation="$script_dir/../gamesaves/$name"

# Set a variable to a grep for the item
itemsearch="$(cat $savelocation | grep $itemname)"

# If that variable doesn't contain stuff, we dont have the item.
if [[ "$itemsearch" == "" ]]; then
    echo "There is no $itemname here."
    echo
    exit 0
else
    echo "You tried the $itemname."
    exit 1
fi