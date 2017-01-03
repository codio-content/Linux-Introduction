## Adding more order with the `ls -l` option

Now that we have more files and directories in the `~/workspace` directory, is there a way of displaying them in a more readable layout?

1. Make sure you are currently at the `~/workspace` directory
2. Execute: `ls -l`

### Exploring the `-l` option of the `ls` command

You should see something like this:

```
codio ~/workspace $ ls -l
drwxrwxr-x 2 codio codio 18 Jul  3 17:47 dir1
drwxrwxr-x 2 codio codio 12 Jul  7 13:36 dir2
-rw-rw-r-- 1 codio codio  0 Jul  7 13:46 empty-file2.txt
-rw-rw-r-- 1 codio codio  0 Jul  1 22:12 empty-file.txt
-rw-rw-r-- 1 codio codio 1703 Jan  3 10:09 README.md
```

We'll explain the additional columns that are being displayed in further units, but for now, pay attention to the last column. 

The name of the files and directories are listed vertically inside the terminal, a cleaner and more readable way of displaying the current directory contents.