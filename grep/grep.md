 # Explaining grep

# https://www.geeksforgeeks.org/grep-command-in-unixlinux/

 The grep command in Unix/Linux is a powerful tool used for searching and manipulating text patterns within files. Its name is derived from the ed (editor) command g/re/p (globally search for a regular expression and print matching lines), which reflects its core functionality. 

# Syntax of grep Command

grep [options] pattern [files]

Options ---- Description

``-c`` This prints only a count of the lines that match a pattern

``-h`` Display the matched lines, but do not display the filenames.

``–i`` Ignores, case for matching

``-l`` Displays list of a filenames only.

``-n`` Display the matched lines and their line numbers.

``-v`` This prints out all the lines that do not matches the pattern

``-e exp``  Specifies expression with this option. Can use multiple times.

``-f file``  Takes patterns from file, one per line.

``-E``  Treats pattern as an extended regular expression (ERE)

``-w``  Match whole word

``-o``  Print only the matched parts of a matching line, with each such part on a separate output line.

``-A n``   Prints searched line and nlines after the result.

``-B n``   Prints searched line and n line before the result.

``-C n``   Prints searched line and n lines after before the result.


cat > geekfile.txt

```
unix is great os. unix was developed in Bell labs.

learn operating system.

Unix linux which one you choose.

uNix is easy to learn.unix is a multiuser os.Learn unix .unix is a powerful.
```
## Application and uses of grep command:

grep searches the input files for lines containing a match to a given pattern list. When it finds a match, it outputs the line or can perform other specified actions. It’s incredibly useful for searching through large logs, files, or command outputs to find specific information.

## Why grep is used in Unix?
grep is used in Unix for a variety of reasons, such as:

- Searching for specific patterns within files.
- Filtering output of other commands.
- Checking for the presence of certain data within databases or logs.
- Automating tasks in scripts that depend on the presence or absence of specified data.