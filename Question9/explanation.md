\# Question 9 – Zombie Process Prevention



\## Command 1

\*\*Command Executed:\*\*

```bash

pwd

Explanation:

This command confirms that the current working directory is the Question9 folder.



Command 2

Command Executed:



nano zombie\_prevention.c

Explanation:

This command creates the C program that demonstrates prevention of zombie processes using fork and wait.



Command 3

Command Executed:



gcc zombie\_prevention.c -o zombie\_prevention

Explanation:

This command compiles the C source file into an executable program.



Command 4

Command Executed:



./zombie\_prevention

Explanation:

This command runs the program, creates multiple child processes, and ensures they are cleaned up by the parent.

