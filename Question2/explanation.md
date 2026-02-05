\# Question 2 – Log File Analysis Script



\## Command 1

\*\*Command Executed:\*\*

```bash

pwd

Explanation:

This command displays the current directory to confirm that the script is being created in the Question2 folder.



Command 2

Command Executed:



nano log.txt

Explanation:

This command creates a sample log file containing INFO, WARNING, and ERROR entries for testing the script.



Command 3

Command Executed:



nano log\_analyzer.sh

Explanation:

This command creates and edits the shell script used to analyze the log file and generate a summary report.



Command 4

Command Executed:



chmod +x log\_analyzer.sh

Explanation:

This command grants execute permission to the script so it can be run directly.



Command 5

Command Executed:



./log\_analyzer.sh

Explanation:

This command runs the script without arguments, and the script displays an error message as expected.



Command 6

Command Executed:



./log\_analyzer.sh log.txt

Explanation:

This command executes the script with the log file and displays the count of log levels along with the latest ERROR entry.



Command 7

Command Executed:



cat logsummary\_\*.txt

Explanation:

This command displays the generated log summary report file to verify its contents.

