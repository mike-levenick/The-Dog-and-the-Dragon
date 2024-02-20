#!/bin/bash

# This is a little tool used to print the quest log, based on what is in inventory.

# Pass in the name as $1, so we can get the correct save file
name=$1

# Get the directory of the current script
script_dir="$(dirname "$0")"

# Get the save file location
savelocation="$script_dir/../gamesaves/$name"

# This is a bit inelegant, but it felt like a good time to introduce `awk`, which is
# a requirement of the assignment.

# Set the field separator to '-' and parse the file, populating variables as we go.
# Read the file using awk and assign values to variables
read_chapter=$(awk -F ' - ' '/Current chapter/ {print $2}' "$savelocation")
read_seeds=$(awk -F ' - ' '/Number of Seeds/ {print $2}' "$savelocation")
read_words=$(awk -F ' - ' '/Number of Words Known/ {print $2}' "$savelocation")
read_machines=$(awk -F ' - ' '/Number of Machines Understood/ {print $2}' "$savelocation")

# Assign values to Bash variables, removing leading/trailing whitespace
chapter=$(echo "$read_chapter" | tr -d '[:space:]')
seeds=$(echo "$read_seeds" | tr -d '[:space:]')
words=$(echo "$read_words" | tr -d '[:space:]')
machines=$(echo "$read_machines" | tr -d '[:space:]')

# Print header
echo
echo "+-----------+"
echo "| QUEST LOG |"
echo "+-----------+"
echo

# MARK - Chapter 5
# If it's chapter 5, we can exit early.
if [[ "$chapter" == "5" ]]; then
    echo "[X] Become a Dragon"
    echo "[ ] Snooze by the fireplace"
    echo
    exit 0
fi

echo "[ ] Become a Dragon"

# MARK - Chapter 0
# If it's chapter 0, we don't need to display much, and can exit early.
if [[ "$chapter" == "0" ]]; then
    echo "   [ ] Get scales"
    echo "   [ ] Learn to talk"
    echo "   [ ] Learn to fly"
    echo
    exit 0
fi

# Mark - Chapter 1
if [[ "$chapter" == "1a" || "$chapter" == "1b" || "$chapter" == "1c" || "$chapter" == "1d" ]]; then
    echo "   [ ] Get scales"
    if [[ "$chapter" == "1a" ]]; then
        echo "      [ ] Plant crops"
        echo "      [ ] Water crops"
        echo "      [ ] Harvest crops"
        echo "      [ ] Roll in seeds"
    elif [[ "$chapter" == "1b" ]]; then
        echo "      [X] Plant crops"
        echo "      [ ] Water crops"
        echo "      [ ] Harvest crops"
        echo "      [ ] Roll in seeds"
    elif [[ "$chapter" == "1c" ]]; then
        echo "      [X] Plant crops"
        echo "      [X] Water crops"
        echo "      [ ] Harvest crops"
        echo "      [ ] Roll in seeds"
    elif [[ "$chapter" == "1d" ]]; then
        echo "      [X] Plant crops"
        echo "      [X] Water crops"
        echo "      [X] Harvest crops"
        echo "      [ ] Roll in seeds"
    fi
elif [[ "$chapter" == "1e" ]]; then
    echo "   [X] Get scales"
    echo "   [ ] Learn to talk"
    echo "   [ ] Learn to fly"
    echo
    exit 0
fi

# Mark - Chapter 2
if [[ "$chapter" == "2a" || "$chapter" == "2b" || "$chapter" == "2c" ]]; then
    echo "   [X] Get scales"
    echo "   [ ] Learn to talk"
    if [[ "$chapter" == "2a" ]]; then
        echo "      [ ] Find a language book"
        echo "      [ ] Study the book with the farmer's son"
        echo "      [ ] Learn to say \"hello world\""
    elif [[ "$chapter" == "2b" ]]; then
        echo "      [X] Find a language book"
        echo "      [ ] Study the book with the farmer's son"
        echo "      [ ] Learn to say \"hello world\""
    elif [[ "$chapter" == "2c" ]]; then
        echo "      [X] Find a language book"
        echo "      [X] Study the book with the farmer's son"
        echo "      [ ] Learn to say \"hello world\""
    fi
elif [[ "$chapter" == "2d" ]]; then
    echo "   [X] Get scales"
    echo "   [X] Learn to talk"
    echo "   [ ] Learn to fly"
    echo
    exit 0
fi

# Mark - Chapter 3
if [[ "$chapter" == "3a" || "$chapter" == "3b" || "$chapter" == "3c" ]]; then
    echo "   [X] Get scales"
    echo "   [X] Learn to talk"
    echo "   [ ] Learn to fly"
    if [[ "$chapter" == "3a" ]]; then
        echo "      [ ] Find a language book"
        echo "      [ ] Study the book with the farmer's son"
        echo "      [ ] Learn to say \"hello world\""
    elif [[ "$chapter" == "3b" ]]; then
        echo "      [X] Find a language book"
        echo "      [ ] Study the book with the farmer's son"
        echo "      [ ] Learn to say \"hello world\""
    elif [[ "$chapter" == "3c" ]]; then
        echo "      [X] Find a language book"
        echo "      [X] Study the book with the farmer's son"
        echo "      [ ] Learn to say \"hello world\""
    fi
elif [[ "$chapter" == "3d" ]]; then
    echo "   [X] Get scales"
    echo "   [X] Learn to talk"
    echo "   [X] Learn to fly"
    echo
    exit 0
fi

