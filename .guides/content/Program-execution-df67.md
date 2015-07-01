## How does the CLI recognizes commands

Pay attention to the second step of the __program execution flow__: 

![program exec flow](.guides/img/program-process-flow.png)

After hitting the _return key_, the CLI takes the `whoami` command and looks for a program with the same name somewhere in the computer:

__command = program name__

To better understand this, try to type any word into the command prompt and hit the _return key_, we'll use `anyword` as an example:

```
codio@anita-basket:~/workspace$ anyword                                                                        
-bash: anyword: command not found 
```

Did you get a similar output?