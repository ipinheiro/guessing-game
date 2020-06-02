#!/usr/bin/env bash
# File: guessinggame.sh

# Continuously asks the user to guess the number of files in the current directory.

echo "Welcome... $USER. Let's try to guess how many files you have in your current working directory."
echo "Give me a number and press Enter:"
read number

function whatsizeami {
        local -i count=$(ls | wc -l)
        echo $count
}

goodanswer=$(whatsizeami)

while [[ $goodanswer -gt 0 ]] && [[ $number -ne $goodanswer ]]
do
        if [[ $number -gt $goodanswer ]]
        then
                echo "Oops, you've aimed too high. Try lower than $number."
        else [[ $number -lt $goodanswer ]]
                echo "Try again, you have more than $number files."
        fi
        echo "Let's try again."
        read number
done
echo "Yay! You did it!!"
