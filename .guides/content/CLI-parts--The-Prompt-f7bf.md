## The command prompt components

So, we now know that when typing something in the prompt the terminal returns a result or an output, but the prompt is also displaying other useful information:

![prompt components](.guides/img/cmd-prompt-components.png)

Lets go one by one: 

1. __Current user__: The user that is currently logged in to the computer
2. __Current directory__: The folder where the current user is currently at (we'll explain the `~` character in a moment)
3. __End of the prompt__: The `$` dollar sign is the most common character for defining the end of the prompt but it can be configured to be any character you would like
4. __Command__: A word or set of characters, in this case `ls` or _list directory contents_ command will run a program recognized by the shell, in this case _bash_.
5. __Option__: Commands like the `ls` command are sometimes followed by options. Options begin with a hyphen and sometimes they are abbreviated as single letters. In this case the `-l` option means: _List in long format_.
6. __Argument__: Sometimes commands act upon files, numbers or text strings. For example the `ls` command can be run to list folders or directories inside other directories: `ls -l dir1/dir2/`
7. __Cursor__: The cursor often determines the space available to type. There are various ways of manipulating the cursor and we will learn them in further units.

|||info
### Folders or directories?
You've probably noticed the use of the words _directory_ and _folder_ in this section. 

Both words are used as a synonym when refering to a __*file tree*__ space that holds other directories or files of any type.

When working on the command line is more appropiate to know them as _directories_ as there are some commands as the `pwd` or _print working directory name_ command that refer to it as _directory_
|||

|||guidance
### Type and interpret the output of the `pwd` command
Click on the terminal cursor, type the `pwd` command on it and hit enter.

Can you tell what is being returned?
|||