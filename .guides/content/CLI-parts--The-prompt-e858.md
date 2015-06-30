## The prompt

Take a look at the left panel, a black box with a single line on it. That's the terminal window.

The terminal accepts commands that the user inputs on the _prompt_, after hitting enter it runs those commands and returns an output. 

Go on, try to write some word on the terminal and hit enter. 

You've probably gotten something like: 

```
-bash: some: command not found 
```

This output means that the `bash` program running on the terminal does not recognize the word you've written as a valid command, in this case the word: "some".

Lets understand what's happening after you hit enter in the prompt:

### Process flow

Whenever a program is processed on the command line, there are 3 main parts that run sequentialy:

![Program process flow](.guides/img/program-process-flow.png)

1. Standard in: Consists in the written command
2. Process: The command is processed by the program
3. Standard out: The interpreted command returns an output

|||info
#### Note
A __standard in__ can also be a text file of a given extension with a CLI __standard out__.

A __standard out__ can also be a text file of any format from either a CLI __standard in__ or a text file __standard in__.
|||