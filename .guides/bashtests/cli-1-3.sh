#!/bin/bash
# bash_history edit

bash_history=~/.bash_history
BASHDIR=/home/codio/workspace/.guides
check_file=cli-1-3
hist_file="$BASHDIR/bashtests/$check_file.txt"

echo "$check_file" >> $bash_history
grep -A2000 -e "^$check_file" $bash_history > "$BASHDIR/bashtests/${check_file}.txt"
find "$hist_file" -type f -exec sed -i "s@~@$HOME@g" {} \; 

# Must match for erasing history
RES_HIST=0
COUNT=0
QCOUNT=3

function test_command {
	(( COUNT ++ ))
	if [[ $COUNT -le $QCOUNT ]]; then
		case $COUNT in
			1 )
				expect_command "pwd" "print path to working directory"
				;;
			2 )
				expect_commands "enter dir1 directory" "cd dir1" "cd dir1/" "cd dir1/" "cd dir1 "
				;;
			3 )
				expect_command "cd .." "get back one directory level"
				;;
		esac
	else 
    echo "Well done!"
    return 0
	fi
}


test_command