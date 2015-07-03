#!/bin/bash
# bashtest.bash

totalpoints=1
pospoints=1
negpoints=2

function begintest {
	echo -n "=> Ready to defy me? [yes/no]:"
	read -r response
	if [[ "$response" == "yes" ]]; then
		echo "=> Excellent, choose a username:"
		read -r username
		greetings
		firstquestion
	else
		echo "=> Uhm, I can wait until you type 'yes'"
		begintest
	fi
}

## Helper funcs
saidgreetings=0
function greetings {
	echo "=> $username? That's a good one!"
	saidgreetings=1
	firstquestion
}

function addpoints {
	totalpoints=totalpoints+pospoints
}
function substractpoints {
	totalpoints=totalpoints-negpoints
}

function firstquestion {
	if [[ $saidgreetings -eq 0 ]]; then
		greetings
	else
		echo "=> All right $username, remember how to get the 'current user'?:"
	fi
	# fqa = firstquestion answer #number
	read -r fqa1
	if [[ "$fqa1" == "whoami" ]]; then
		echo "=> That's it! The 'whoami' command outputs the current logged in user: $(whoami)"
		addpoints
		secondquestion
	else
		echo "=> Ehm, the '$fqa1' command does not output the current user, try again."
		substractpoints
		firstquestion
	fi
}

function secondquestion {
	echo "=> Lets create a directory called 'test-dir1', remember how?:"
	read -r sqa1
	if [[ "$sqa1" == "mkdir" && "$1" == "" ]]; then
		echo "=> 'mkdir' is the right command, but you are missing the directory name. Try again."
		secondquestion
	elif [[ "$sqa1" == "mkdir test-dir1" ]]; then
		mkdir test-dir1
		echo "=> Cool! We now have a 'test-dir1' directory."
		addpoints
		# thirdquestion
	else
		echo "=> I don't remember having a '$sqa1' command for making directories. Try again."
		substractpoints
		secondquestion
	fi
}

begintest
