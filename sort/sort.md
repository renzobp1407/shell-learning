# Explaining sort

# https://www.geeksforgeeks.org/sort-command-linuxunix-examples/

## SORT command

is used to sort a file, arranging the records in a particular order. By default, the sort command sorts file assuming the contents are ASCII. Using options in the sort command can also be used to sort numerically

SORT command sorts the contents of a text file, line by line.


: <<'COMMENT'

The sort command follows these features as stated below:  

Lines starting with a number will appear before lines starting with a letter.
Lines starting with a letter that appears earlier in the alphabet will appear before lines starting with a letter that appears later in the alphabet.
Lines starting with a uppercase letter will appear before lines starting with the same letter in lowercase.

COMMENT

Options ----- Description


``-o`` Specifies an output file for the sorted data. Functionally equivalent to redirecting output to a file.

``-r`` Sorts data in reverse order (descending).

``-n`` Sorts a file numerically (interprets data as numbers).

``-nr`` Sorts a file with numeric data in reverse order. Combines -n and -r options.

``-k`` Sorts a table based on a specific column number.

``-c`` Checks if the file is already sorted and reports any disorder.

``-u`` Sorts and removes duplicate lines, providing a unique sorted list.

``-M`` Sorts by month names.



## Application and uses of sort command:

It can sort any type of file be it table file text file numeric file and so on.
- Sorting can be directly implemented from one file to another without the present work being hampered.

- Sorting of table files on the basis of columns has been made way simpler and easier.
- So many options are available for sorting in all possible ways.
- The most beneficial use is that a particular data file can be used many times as no change is made in the input file provided.
- Original data is always safe and not hampered.