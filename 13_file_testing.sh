# File_Testing
# used to obtain several usefull information from the file that we need

# the commands:

# -<command> [filename]
# [filename1] -<command> [filename2

# Example
# user "-e" to test if file exist

#!/bin/bash
filename "sample.md"
if [ -e "${filename}" ]; then
     echo "$filename exist as a file"
fi

# use "-d" to test if directory exist

#!/bin/bash
directory_name="test_directory"
if [ -d "$directory_name" ]; then
    echo "$directory_name exists as a directory"
fi