# https://www.geeksforgeeks.org/awk-command-unixlinux-examples/
# Awk is a scripting language used for manipulating data and generating reports. The awk command programming language requires no compiling and allows the user to use variables, numeric functions, string functions, and logical operators. 

# Awk is a utility that enables a programmer to write tiny but effective programs in the form of statements that define text patterns that are to be searched for in each line of a document and the action that is to be taken when a match is found within a line. 
# Awk is mostly used for pattern scanning and processing. It searches one or more files to see if they contain lines that matches with the specified patterns and then perform the associated actions. 

# Awk is abbreviated from the names of the developers – Aho, Weinberger, and Kernighan. 

syntax:
awk optons 'selection _criteria {action }' input-file > output-file

$cat > employee.txt 

: <<'COMMENT'

ajay manager account 45000
sunil clerk account 25000
varun manager sales 50000
amit manager account 47000
tarun peon sales 15000
deepak clerk sales 23000
sunil peon sales 13000
satvik director purchase 80000 

COMMENT

# 1. Default behavior of Awk: By default Awk prints every line of data from the specified file.  
$ awk '{print}' employee.txt

# 2. Print the lines which match the given pattern. 
$ awk '/manager/ {print}' employee.txt

# 3. Splitting a Line Into Fields : For each record i.e line, the awk command splits the record delimited by whitespace character by default and stores it in the $n variables. If the line has 4 words, it will be stored in $1, $2, $3 and $4 respectively. Also, $0 represents the whole line.  
# In the above example, $1 and $4 represents Name and Salary fields respectively. 
$ awk '{print $1,$4}' employee.txt 

# Built-In Variables In Awk

 NR: NR command keeps a current count of the number of input records.
 NF: NF command keeps a count of the number of fields within the current input record. 
 FS: FS command contains the field separator character which is used to divide fields on the input line. The default is “white space”, meaning space and tab characters. 
 RS: RS command stores the current record separator character. 
 OFS: OFS command stores the output field separator, which separates the fields when Awk prints them. 
 ORS: ORS command stores the output record separator, which separates the output lines when Awk prints them. 

# Examples:

# Use of NR built-in variables (Display Line Number)  

$ awk '{print NR,$0}' employee.txt # 1 ajay manager account 45000

# Use of NF built-in variables (Display Last Field)  

$ awk '{print $1,$NF}' employee.txt # ajay 45000
# In the above example $1 represents Name and $NF represents Salary. We can get the Salary using $NF , where $NF represents last field. 

# Another use of NR built-in variables (Display Line From 3 to 6) 

$ awk 'NR==3, NR==6 {print NR,$0}' employee.txt # 3 varun manager sales 50000

# -----------------------------------------------------

# More Examples For the given text file: 

$cat > geeksforgeeks.txt

: <<'COMMENT'

A    B    C
Tarun    A12    1
Man    B6    2
Praveen    M42    3

COMMENT

# 1) To print the first item along with the row number(NR) separated with ” – “ from each line in geeksforgeeks.txt: 

$ awk '{print NR "- " $1 }' geeksforgeeks.txt 

# 2) To return the second column/item from geeksforgeeks.txt: 

$ awk '{print $2}' geeksforgeeks.txt 

# 3) To print any non empty line if present  

$ awk 'NF < 0' geeksforgeeks.txt

# 4) To find the length of the longest line present in the file:  

$ awk '{ if (length($0) > max) max = length($0) } END { print max }' geeksforgeeks.txt

# 5) To count the lines in a file:  
$ awk 'END { print NR }' geeksforgeeks.txt 

# 6) Printing lines with more than 10 characters:  
$ awk 'length($0) > 10' geeksforgeeks.txt 

# 7) To find/check for any string in any specific column:
$ awk '{ if($3 == "B6") print $0;}' geeksforgeeks.txt

# 8) To print the squares of first numbers from 1 to n say 6:  
$ awk 'BEGIN { for(i=1;i<=6;i++) print "square of", i, "is",i*i; }' 


# --------------------------------------------------------

: <<'COMMENT'

awk is a scripting language and command-line tool that allows you to manipulate data and generate reports. It works by scanning a file line by line, searching for patterns that match a given condition, and performing specified actions on those lines or fields within lines.

What is the main purpose of awk?
The primary purpose of awk is to:

Process text files: Analyzing and manipulating data in text files.
Pattern scanning and processing: Searching for patterns within files and performing specified actions when those patterns are found.
Data extraction and reporting: Generating formatted reports from a text database or any structured data.
Text transformation and manipulation: Efficiently handling and transforming data or text within files.

COMMENT
















