#!/bin/bash
# bash_history edit

bash_history=~/.bash_history
check_file=cli-1-1
hist_file="/home/codio/workspace/.guides/bashtests/$check_file.txt"

echo "$check_file" >> $bash_history
grep -A2000 -e "^$check_file" $bash_history > "/home/codio/workspace/.guides/bashtests/${check_file}.txt"

# Must match for erasing history
RES_HIST=0
COUNT=0
QCOUNT=2

function test_command {
	(( COUNT ++ ))
	if [[ $COUNT -le $QCOUNT ]]; then
		case $COUNT in
			1 )
				expect_command "whoami" "output current user"
				;;
			2 )
				expect_command "pwd" "output current working directory path"
				;;			
		esac
	else 
    echo "Well done!"
    return 0
	fi
}


test_command