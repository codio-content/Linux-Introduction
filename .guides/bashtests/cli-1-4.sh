#!/bin/bash
# bash_history edit

bash_history=~/.bash_history
BASHDIR=/home/codio/workspace/.guides
check_file=cli-1-4
hist_file="$BASHDIR/bashtests/$check_file.txt"

echo "$check_file" >> $bash_history
grep -A2000 -e "^$check_file" $bash_history > "$BASHDIR/bashtests/${check_file}.txt"
find "$hist_file" -type f -exec sed -i "s@~@$HOME@g" {} \; 

# Must match for erasing history
RES_HIST=0
COUNT=0
QCOUNT=8

function test_command {
	(( COUNT ++ ))
	if [[ $COUNT -le $QCOUNT ]]; then
		case $COUNT in
			1 )
				expect_directory "/home/codio/workspace/test-dir1" "create test-dir1 directory on ~/workspace folder"
				;;
			2 )
				expect_commands "list ~/workspace directory content" "ls" "ls ."
				;;
			3 )
				expect_commands "enter test-dir1 directory" "cd test-dir1" "cd test-dir1/" "cd test-dir1 " "cd test-dir1/ "
				;;
			4 )
				expect_command "pwd" "print the path to working directory"
				;;
			5 )
				expect_file "/home/codio/workspace/test-dir1/test-file1.txt" "create '~/workspace/test-dir1/test-file1.txt file'"
				;;
			6 )
				expect_command "ls -a" "list hidden files"
				;;
			7 )
				expect_command "cd .." "get back one directory level"
				;;
			8 )
				expect_command "ls -l" "list files in vertical column layout"
				;;
		esac
	else 
    echo "Well done!"
    return 0
	fi
}

test_command