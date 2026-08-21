#!/bin/bash

# Generate a random number between 1 and 100
secret=$((RANDOM % 100 + 1))

attempts=0

echo "================================="
echo "     GUESS THE NUMBER GAME"
echo "================================="
echo "I have selected a number between 1 and 100."
echo "Try to guess it!"
echo

while true
do
    read -p "Enter your guess: " guess

    # Validate input
    if ! [[ $guess =~ ^[0-9]+$ ]]; then
        echo "Please enter a valid number."
        continue
    fi

    attempts=$((attempts + 1))

    if [ "$guess" -lt "$secret" ]; then
        echo "Too Low!"
    elif [ "$guess" -gt "$secret" ]; then
        echo "Too High!"
    else
        echo
        echo "Congratulations!"
        echo "You guessed the correct number: $secret"
        echo "Attempts: $attempts"
        break
    fi
done