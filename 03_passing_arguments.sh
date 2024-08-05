#!/bin/bash

echo "File name is "$0 #holds the current script
echo $3 # Holds banana
Data=$5
echo "A $Data cost just $6."
echo $#

#Execute on terminal as "bash 03_passing_arguments.sh apple 5 banana 8 "Fruit Basket" 15" 

#!/bin/bash
function File {
    # think you are inside the file
    # Change here
    echo "print the arguments"
}

# Do not change anything
if [ ! $# -lt 1 ]; then
    File $*
    exit 0
fi

# change here
# here you can pass the arguments
bash test.sh arguments