## The `mkdir` command makes directories, but what about files?

Wonderful question! You may be guessing that in order to create or make files, the command would be something like: `mkfile`, right? Well, in this case it isn't.

To create a file in the current directory, execute the following:

1. Click on the terminal window
2. Type: `touch empty-file2.txt`
3. Hit the `return key`

Execute the `ls` in the terminal, if you followed along with the course, you should be seeing this output:

```
codio@anita-basket:~/workspace$ ls                                                                             
dir1  dir2  empty-file2.txt  empty-file.txt
```

|||definition
### Command: `touch`
__Definition:__
If any file does not exist, the `touch` command creates it with default permissions.

Additionaly, the `touch` commands needs an _argument_, in this case, the argument is the name of the file to be created, don't forget the file extension: 

`touch name_of_the_file.file_extension`

---

__What is a *file extension*?__ File extensions are also known as _file formats_. You may be familiar with _.doc_ or _.xls_ for _Microsoft Word_ and _Microsoft Excel_ respectively. In most cases _file extensions_ determine the program that should or can read the file.
|||