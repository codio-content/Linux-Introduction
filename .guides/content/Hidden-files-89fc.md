## The `ls` command ommited directories and files with a dot

Aha! You are becoming a sharped-eyed developer.

Remember the _file tree_? There are some __files and directories that start with a dot__ that are not being printed by the `ls` command, why is that? 

|||definition
### Hidden files and hidden directories
__Dotfiles__ as they are usually known, are commonly used for storing user preferences or user configuration. 

The intent of files or folders that start with a dot character is simply not to "clutter" the display of the contents of a directory listing with files the user did not directly create.
|||

### Wondering if hidden files and folders can be listed?

Yes, they can be listed: 

1. Click on the terminal window
2. Type: `ls -a`
3. Press the _return key_

In addition to the `ls` command, we are typing 2 characters more: `-a`, this set of characters are called: __command options__.