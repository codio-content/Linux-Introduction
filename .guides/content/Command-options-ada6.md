## What does the `-a` characters do

Executing the `ls` command output only _the visible_ files on our current directory, however, as the _file tree_ displays, there are some hidden folders and hidden files inside it. 

### Introducing command options

After executing the `ls -a` command, we've gotten a larger output:

```
codio ~/workspace $ ls -a
.  ..  .bashtest.bash  dir1  empty-file.txt  .git  .guides
```

Can you recognize the hidden V.S. the normal files and folders?

|||definition
### Command options
_Bash_ commands accept options after the command name. These options complement the command output by adding or structuring information regarding the object over which the command is acting upon.
|||