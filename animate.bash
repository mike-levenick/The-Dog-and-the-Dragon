#!/bin/bash


# An animation interpreter inspired by https://github.com/octobanana/asciimation but simplified and written in bash
# Takes 2 parameters, $1 is the location of a file containing frames, separated by the substring "FRAME"
# $2 is the time that should be slept between frames (smaller number is higher framerate)

# Check if file exists and is readable
if [[ ! -r "$1" ]]; then
    echo "Error: File not found or not readable"
    exit 1
fi

# Read the file line by line
while IFS= read -r line; do

    # Check if the line contains the frame marker
    if [[ $line == "FRAME"* ]]; then
        # If it's a frame marker, sleep the required time and clear the screen
        sleep $2
        clear
        continue
    fi
    # Print the content of the frame
    echo "$line"
done < "$1"
