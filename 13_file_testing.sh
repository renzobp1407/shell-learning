# File_Testing
# used to obtain several usefull information from the file that we need

# the commands:

# -<command> [filename]
# [filename1] -<command> [filename2

# Example
# user "-e" to test if file exist

#!/bin/bash
filename="12_bash_trap_command.sh"
if [ -e "${filename}" ]; then
     echo "$filename exist as a file"
fi

# use "-d" to test if directory exist

#!/bin/bash
directory_name="test_directory"
if [ -d "$directory_name" ]; then
    echo "$directory_name exists as a directory"
fi

# use "-r" to test if file has read permission for the user running the script/test

#!/bin/bash
filename="12_bash_trap_command.sh"
if [ ! -f "$filename"]; then
   touch "$filename"
fi
if [ -r  "$filename" ]; then
  echo "you are allowed to read $filename"
else
  echo "you are not allowed to read $filename"
fi

