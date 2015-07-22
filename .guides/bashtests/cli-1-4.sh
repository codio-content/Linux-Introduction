    (( QCOUNT -- ))#!/bin/bash
# bash_history edit

bash_history=~/.bash_history
check_file=cli-1-4.txt
grep -A2000 -e "^cli-1-4" $bash_history > "$BASHDIR/bashtests/$check_file"

hist_file="$BASHDIR/bashtests/$check_file"

QCOUNT=8
function expect_command 
{
	(( QCOUNT -- ))
	if grep -Fxq "$1" "$hist_file"
	then
		response "$1" "$3" $QCOUNT
	else 
		tell_error "$1" "$2" $QCOUNT
	fi
}

function expect_commands 
{
	if grep -Fxq "$3" "$hist_file"; then
		expect_command "$3" "$1" "$2"
	elif grep -Fxq "$4" "$hist_file"; then
		expect_command "$4" "$1" "$2"
	elif grep -Fxq "$5" "$hist_file"; then
		expect_command "$5" "$1" "$2"
	elif grep -Fxq "$6" "$hist_file"; then
		expect_command "$6" "$1" "$2"
	else
        (( QCOUNT -- ))
		tell_error "$1" "$2" $QCOUNT
	fi
}

function tell_error 
{
	echo "ERROR: Task $(( $3 + 1 )). Expected: $2. Try again."
	return 1
	exit
}

function response 
{
	echo "right: Task $(($3+1)). The '$1' command $2"
	test_command
}

function test_command {
	while [[ $QCOUNT > 0 ]]; do
		case $QCOUNT in
			1 )
				expect_command "mkdir test-dir1" "create test-dir1 directory on ~/workspace folder" "created the test-dir1 directory"
				;;
			2 )
				expect_command "ls" "list ~/workspace directory content" "lists directories"
				;;
			3 )
				expect_command "cd test-dir1" "enter test-dir1 directory" "entered the test-dir1 directory"
				;;
			4 )
				expect_command "pwd" "print the path to working directory" "prints the path to the working directory"
				;;
			5 )
				expect_command "touch test-file1.txt" "create '~/workspace/test-dir1/test-file1.txt file'" "created the test-file1.txt file"
				;;
			6 )
				expect_command "ls -a" "list hidden files" "lists hidden files"
				;;
			7 )
				expect_command "cd .." "get back one directory level" "gets back one directory level"
				;;
			8 )
				expect_commands "list hidden files in vertical column layout" "lists dotfiles in a vertical column layout" "ls -al" "ls -la" "ls -l -a" "ls -a -l"
				;;
		esac
	done
}


test_command