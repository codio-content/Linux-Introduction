## Can I go inside directories using the CLI?

_Bash_ provides a widely used command called `cd` or _change directories_ command that allows the user to navigate through directories, in order to see how it works perform the following: 

1. Click on the terminal window
2. Type `ls` to list the current directory contents, _return key_
3. Type `cd dir1` to enter the _dir1_ directory, _return key_
4. Type `ls` to list the _dir1_ directory contents, _return key_

Take a look inside the `dir1` directory in the file tree. It should match the contents you got from the `ls` command.

That's it, you've learned how to enter a directory in _bash_ scripting.

|||definition
### Command: `cd`
__Definition:__
The `cd` command or _change directories_ command allows you to go inside a directory by adding its name as an argument: 

`cd name_of_directory`
|||

At the top of this page, you entered a directory using `cd dir1`. Can you guess how to get back to the main `workspace` directory?