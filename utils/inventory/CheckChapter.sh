#!/bin/bash

# Pass in the name as $1, so we can get the correct save file
name=$1

# Get the directory of the current script
script_dir="$(dirname "$0")"

# Get the save file location
savelocation="$script_dir/../../gamesaves/$name/chapter"

# New version of chapter checker, to work around poseidon issues
chapter=$(cat "$savelocation")

echo $chapter
