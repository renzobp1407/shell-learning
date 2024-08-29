# https://www.geeksforgeeks.org/grep-command-in-unixlinux/

# The grep command in Unix/Linux is a powerful tool used for searching and manipulating text patterns within files. Its name is derived from the ed (editor) command g/re/p (globally search for a regular expression and print matching lines), which reflects its core functionality. 

# Syntax of grep Command

: <<'COMMENT'
grep [options] pattern [files]


cat > geekfile.txt

: <<'COMMENT'

unix is great os. unix was developed in Bell labs.

learn operating system.

Unix linux which one you choose.

uNix is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.

COMMENT

# 1. Case insensitive search
grep -i "UNix" geekfile.txt

# The -i option enables to search for a string case insensitively in the given file. It matches the words like “UNIX”, “Unix”, “unix”. 

# 2. Displaying the Count of Number of Matches Using grep

grep -c "unix" geekfile.txt

# 3. Display the File Names that Matches the Pattern Using grep
grep -l "unix" *
grep -l "unix" f1.txt f2.txt f3.xt f4.txt

# 4. Checking for the Whole Words in a File Using grep
grep -w "unix" geekfile.txt

# 5. Displaying only the matched pattern Using grep
grep -o "unix" geekfile.txt

# 6. Show Line Number While Displaying the Output Using grep -n
grep -n "unix" geekfile.txt

# 7. Inverting the Pattern Match Using grep
grep -v "unix" geekfile.txt

# 8. Matching the Lines that Start with a String Using grep
grep "^unix" geekfile.txt

# 9. Matching the Lines that End with a String Using grep
# The $ regular expression pattern specifies the end of a line. 
grep "os$" geekfile.txt


# 10.Specifies expression with -e option
grep –e "Agarwal" –e "Aggarwal" –e "Agrawal" geekfile.txt

# 11. -f file option Takes patterns from file, one per line
grep –f pattern.txt  geekfile.txt


# 12. Print n Specific Lines from a File Using grep
# Syntax: 

grep -A[NumberOfLines(n)] [search] [file]  

grep -B[NumberOfLines(n)] [search] [file]  

grep -C[NumberOfLines(n)] [search] [file]  

# -A prints the searched line and n lines after the result, -B prints the searched line and n lines before the result, and -C prints the searched line and n lines after and before the result. 

# 13. Search Recursively for a Pattern in the Directory
grep -iR geeks /home/geeks


# -----------------------------------------






