#!/usr/bin/bash
#
# guessinggame.sh - bash script to guess total number of files in current directory and store your score history.
# 20-Jul-2017	Muhammad Ahmer Saleem	Created this.


function GuessGAME {

scorefile="highscores_bash" 
guess=-1
typeset -i num=0

echo -e "Guess total number of files in the current directory\n"

### Number of files in current directory
answer=$(ls|wc -l)

### Play game
while (( guess != answer )); do
	let num=num+1
	read -p "Enter Your Guess $num: " guess
	if (( guess < answer )); then
		echo "Your guess is too low..."
	elif (( guess > answer )); then
		echo "Your guess is too high..."
	fi
done
echo -e "Congratulations!You took $num guesses.\n"

### Save high score
read -p "Please enter your name: " name
echo $name $num >> $scorefile

### Print high scores
echo -e "\nPrevious Scores," 
cat $scorefile

}

GuessGAME
