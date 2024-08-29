# https://www.geeksforgeeks.org/sort-command-linuxunix-examples/

# SORT command
# is used to sort a file, arranging the records in a particular order. By default, the sort command sorts file assuming the contents are ASCII. Using options in the sort command can also be used to sort numerically

# SORT command sorts the contents of a text file, line by line.



#  sort the lines alphabeticall
sort file.txt

# Sort Lines in Text Files with Uppercase and Lowercase
sort mix.txt
# abc apple BALL Abc bat
# abc Abc apple BALL bat

# Numeric Sorting in Lines in Text Files
sort file1.txt 
# 50 39 15 89
# 15 39 50 89

#  Sort Lines in Reverse Order
sort -r example.txt
# apple banana
# banana apple

# sort Specific Fileds
sort -k3 employee_data.txt

# -k3: This option indicates that the sorting should be done based on the third column
