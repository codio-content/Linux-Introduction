## Remember the double dots?

When we executed the `ls -a` command, we noticed a set of single and double dots: `. ..`
As we previously mentioned these dots are utilities that _bash_ uses to help on navigating the _file system_.

### Going back 1 directory

Considering that we have entered the _dir1_ directory in the previous section, we may want to get out of it:

1. Execute the `pwd` command to confirm we are on the _dir1_ directory
2. Execute the `ls -a` command to confirm that we indeed have single and double dots available
2. Execute `cd ..` to exit the current directory and go back 1 directory
3. Execute `pwd` to confirm that we are on the `/home/codio/workspace/` directory again