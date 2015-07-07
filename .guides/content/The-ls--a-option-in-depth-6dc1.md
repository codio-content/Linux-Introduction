## Why are there _dots_ without a name after them?

Take a closer look at the `ls -a` output listing our current directory contents.
Can you guess which are files and which are directories?:

![ls-a-option-cmd](.guides/img/ls-a-option-cmd.png)

As you can see, _bash_ sorts files and directories alphabetically starting with the dots.

|||definition
### Single and double dots
_Dots_ in _bash_ are useful utilities that help on navigating the _file system_ using the CLI. 

In an `ls` listing

- `.` refers to the current directory, more on this later
- `..` refers to the parent directory, the directory immediately above the current directory. We'll apply this knowledge later.

|||