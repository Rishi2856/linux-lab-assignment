\# Question 8 – Background File Move Script



\## Command 1

\*\*Command Executed:\*\*

```bash

pwd

Explanation:

This command confirms that the current working directory is the Question8 folder.



Command 2

Command Executed:



mkdir testfiles

Explanation:

This command creates a directory containing files to test background file movement.



Command 3

Command Executed:



nano bg\_move.sh

Explanation:

This command creates and edits the bg\_move.sh script to move files in the background.



Command 4

Command Executed:



chmod +x bg\_move.sh

Explanation:

This command assigns execute permission to the script so it can be executed directly.



Command 5

Command Executed:



./bg\_move.sh testfiles

Explanation:

This command runs the script, moves each file in the background, and displays the PID of each process.



Command 6

Command Executed:



ls backup

Explanation:

This command lists the backup directory to verify that all files were moved successfully.

