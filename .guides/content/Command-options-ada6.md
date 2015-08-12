## What does the -a character do

Executing the `ls` command outputs only _the visible_ files on our current directory, however, as the _file tree_ displays, there are some hidden directories and hidden files inside it.

### Introducing: command options

After executing the `ls -a` command, we’ve got a larger output:

```
codio ~/workspace $ ls -a
.  ..   dir1  empty-file.txt  .git  .gitignore  .guides
```

Can you recognize the hidden vs. the normal files and folders?

|||definition
### Command options
_Bash_ commands accept options after the command name. These options complement the command output by adding or structuring information regarding the text, file or directory over which the command is acting upon.

Command options are written after the command name and begin with a `-` symbol followed by the option character.
|||

Wonder what all of those dots, double dots and other hidden files and directories mean? Head to the next section.