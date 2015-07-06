#!/bin/bash
# bashtest.bash

# Points
totalpoints=1
pospoints=1
negpoints=2

# Colors
ERRCOLOR=`tput setaf 1`
QCOLOR=`tput setaf 3`
ANSCOLOR=`tput setaf 2`
OUTCOLOR=`tput setaf 4`
PROMPTCOLOR=`tput setaf 3`
CMDCOLOR=`tput setaf 4`
COLRESET=`tput sgr0`

# Helper funcs
saidgreetings=0
function greetings {
	echo "${PROMPTCOLOR}=>${OUTCOLOR} $username?${ANSCOLOR} That's a good one!"
	saidgreetings=1
	question1
}

toldaboutpoints=0
function tellaboutpoints {
	echo "${PROMPTCOLOR}=>${QCOLOR} You didn't know it but points are being added as you give the right answer and substracted for a wrong answer."
	echo "${PROMPTCOLOR}=>${QCOLOR} Totalpoints count: '$totalpoints', for 2 questions already answered."
	echo "${PROMPTCOLOR}=>${QCOLOR} Lets continue..."
	toldaboutpoints=1
	question3
}

function addpoints {
	totalpoints=$(($totalpoints+$pospoints))
	echo "${PROMPTCOLOR}=>${QCOLOR} Totalpoints: $totalpoints ${COLRESET}"
}
function substractpoints {
	totalpoints=$(($totalpoints-$negpoints))
	echo "${PROMPTCOLOR}=>${QCOLOR} Totalpoints: $totalpoints ${COLRESET}"
}

function changedir {
	cd "$1"
}

# Begin test
function begintest {
	if [[ -d "test-dir1" ]]; then
		rm -R test-dir1
	fi
	echo -n "${PROMPTCOLOR}=>${QCOLOR} Ready to defy me? [yes/no]:"
	read -r response
	if [[ "$response" == "yes" ]]; then
		echo "${PROMPTCOLOR}=>${QCOLOR} Excellent, choose a username:"
		read -r username
		greetings
		question1
	else
		echo "${PROMPTCOLOR}=>${ERRCOLOR} Uhm, I can wait until you type 'yes'"
		begintest
	fi
}

function question1 {
	if [[ $saidgreetings -eq 0 ]]; then
		greetings
	else
		echo "${PROMPTCOLOR}=>${QCOLOR} All right $username, remember how to get the 'current user'?:"
		# qa = question answer #number
		read -r qa1
	fi
	if [[ "$qa1" == "whoami" ]]; then
		echo "${PROMPTCOLOR}=>${ANSCOLOR} That's it! The ${CMDCOLOR}whoami${COLRESET}${ANSCOLOR} command outputs the current logged in user: ${OUTCOLOR}$(whoami)${COLRESET}"
		addpoints
		question2
	else
		echo "${PROMPTCOLOR}=>${ERRCOLOR} Ehm, the ${CMDCOLOR}$qa1${COLRESET}${ERRCOLOR} command does not output the current user, try again."
		substractpoints
		question1
	fi
}

function question2 {
	echo "${PROMPTCOLOR}=>${QCOLOR} Lets create a directory called 'test-dir1', remember how?:"
	read -r qa2
	if [[ "$qa2" == "mkdir" && $1 == "" ]]; then
		echo "${PROMPTCOLOR}=>${CMDCOLOR}mkdir${COLRESET}${ERRCOLOR} is the right command, but you are missing the directory name. Try again."
		question2
	elif [[ "$qa2" == "mkdir test-dir1" ]]; then
		mkdir test-dir1
		echo "${PROMPTCOLOR}=>${ANSCOLOR} Cool! We now have a ${OUTCOLOR}test-dir1${ANSCOLOR} directory."
		addpoints
		question3
	else
		echo "${PROMPTCOLOR}=>${ERRCOLOR} You typed the ${CMDCOLOR}$qa2${COLRESET}${ERRCOLOR} command for making directories, are you creating the right directory?. Try again."
		substractpoints
		question2
	fi
}

function question3 {
	echo "${PROMPTCOLOR}=>${QCOLOR} Make sure that the 'test-dir1' was created by listing the current directory contents:"
	read -r qa3
	if [[ "$qa3" == "ls" ]]; then
		ls
		addpoints
		question4
	else
		echo "${PROMPTCOLOR}=>${ERRCOLOR} $username, how do you 'list' the directory contents in Bash?. Try again"
		substractpoints
		question3
	fi
}

function question4 {	
	echo "${PROMPTCOLOR}=>${QCOLOR} In fact, the ${OUTCOLOR}test-dir1${QCOLOR} is there, lets enter it:"
	read -r qa4
	if [[ "$qa4" == "cd" && $1 == "" ]]; then
		echo "${PROMPTCOLOR}=>${CMDCOLOR} cd${COLRESET}${ERRCOLOR} is the right command, but you are missing the right argument. Try again."
		question4
	elif [[ "$qa4" == "cd test-dir1" ]]; then
		changedir test-dir1
		echo "${PROMPTCOLOR}=>${ANSCOLOR} You are now inside the ${OUTCOLOR}test-dir1${ANSCOLOR} directory, the 'change directories' command helps you on doing that."
		addpoints
		question5
	else
		echo "${PROMPTCOLOR}=>${ERRCOLOR} I can't recognize the ${CMDCOLOR}$qa4${COLRESET}${ERRCOLOR} command, try again."
		substractpoints
		question4
	fi
}

function question5 {
	echo "${PROMPTCOLOR}=>${QCOLOR} Confirm that we've entered by printing the 'path to the current directory':"
	read -r qa5
	if [[ $qa5 == "pwd" ]]; then
		question6
	else
		echo "${PROMPTCOLOR}=>${ERRCOLOR} I can't recognize the ${CMDCOLOR}$qa5${COLRESET}${ERRCOLOR} command, try again."
		substractpoints
		question5
	fi
}

function question6 {
	echo "${PROMPTCOLOR}=>${ANSCOLOR} Our current directory path is ${CMDCOLOR}$(pwd)${COLRESET}${ANSCOLOR}"
	addpoints
	echo "${PROMPTCOLOR}=>${ANSCOLOR} It's time to create a file with the name ${OUTCOLOR}test-file1.txt${COLRESET}:"
	read -r qa6
	if [[ "$qa6" == "touch" && $1 == "" ]]; then
		echo "${PROMPTCOLOR}=>${CMDCOLOR} pwd${COLRESET}${ERRCOLOR} is the right command, but you are missing the right argument. Try again."
		question6
	elif [[ $qa6 == "touch test-file1.txt" ]]; then
		touch test-dir1.txt
		echo "${PROMPTCOLOR}=>${ANSCOLOR} You've created a ${OUTCOLOR}test-dir1.txt${ANSCOLOR} file"
		addpoints
		exit
		# question7
	else
		echo "${PROMPTCOLOR}=>${ERRCOLOR} I can't recognize the ${CMDCOLOR}$qa6${COLRESET}${ERRCOLOR} command, try again."
		substractpoints
		question6
	fi
}





begintest