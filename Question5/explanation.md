\# Question 5 – Directory Comparison Script



\## Command 1

\*\*Command Executed:\*\*

```bash

pwd

Explanation:

This command confirms that the current working directory is the Question5 folder.



Command 2

Command Executed:



mkdir dirA dirB

Explanation:

This command creates two directories to compare their contents.



Command 3

Command Executed:



echo "Hello Linux" > dirA/file1.txt

Explanation:

This command creates a file that exists only in dirA.



Command 4

Command Executed:



echo "Different content" > dirB/file2.txt

Explanation:

This command creates a file that exists only in dirB.



Command 5

Command Executed:



nano sync.sh

Explanation:

This command creates and edits the sync.sh script to compare files between two directories.



Command 6

Command Executed:



chmod +x sync.sh

Explanation:

This command assigns execute permission to the script so it can be run directly.



Command 7

Command Executed:



./sync.sh

Explanation:

This command runs the script and displays files unique to each directory and compares common files.

