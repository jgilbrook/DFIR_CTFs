#!/bin/bash

# Base64-encoded flags
ENCODED_FLAG1="RkxBR3sxOTIuMTY4LjcwLjExfQ=="
ENCODED_FLAG2="RkxBR3szeGYxbF9kQG5nM3J9"

# Decode Base64 to ASCII
FLAG1=$(echo "$ENCODED_FLAG1" | base64 --decode)
FLAG2=$(echo "$ENCODED_FLAG2" | base64 --decode)

# Ask user for their flag guess
read -p "Enter the flag you believe is correct: " USER_FLAG

# Compare user input with decoded flags
if [ "$USER_FLAG" == "$FLAG1" ]; then
    echo "Flag is correct!"
    exit 0
elif [ "$USER_FLAG" == "$FLAG2" ]; then
    echo "Flag is correct!"
    exit 0
else
    echo "Incorrect flag. Try again."
    exit 1
fi
