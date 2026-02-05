# Question 1 – File and Directory Analysis Script

## Command 1
**Command Executed:**
```bash
cd ~/linux-lab-assignment/Question1
Explanation:
This command navigates to the Question1 directory where the script and related files are stored.

Command 2
Command Executed:

nano analyze.sh
Explanation:
This command creates and edits the analyze.sh shell script to perform file and directory analysis.

Command 3
Command Executed:

chmod +x analyze.sh
Explanation:
This command assigns execute permission to the script so it can be run as a program.

Command 4
Command Executed:

echo "Hello Linux Lab" > test.txt
Explanation:
This command creates a sample text file to test the script functionality on a file.

Command 5
Command Executed:

mkdir testdir
Explanation:
This command creates a directory to test the script’s directory handling capability.

Command 6
Command Executed:

./analyze.sh
Explanation:
This command executes the script without arguments, and the script displays an error message as expected.

Command 7
Command Executed:

./analyze.sh test.txt
Explanation:
This command runs the script on a file and displays the number of lines, words, and characters.

Command 8
Command Executed:

./analyze.sh testdir
Explanation:
This command executes the script on a directory and displays the total number of files and .txt files.