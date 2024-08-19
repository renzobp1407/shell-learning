# this tutorial is for the situations to catch special signal/interruption/user input in yout script to prevent unpredictables

# Trap command:

# trap <arg/function> <signal>

# Example

#!bin/bash
# traptest.sh
# notice you cannot make Ctrl-C work in this shell, 
# try with your local one, also remeber to chmod +x 
# your local .sh file so you can execute it!

trap "echo Booh!" SIGINT SIGTERM
echo "it's going to run untill you hit Ctrl+Z"
echo "hit Ctrl+C to be blown away!"

while true
do
  sleep 60
done

# you can substitute the "echo booh!" with a function

function booh{
    echo "booh!"
}

trap booh SIGINT SIGTERM


# sigint = signal interrupt
# user send an interrupt signal (CTRL+C)

# SIQUIT = signal quit
# user send a quit signal (Crtl+D)

# SIGPE: signal personalized
# attempted an iletal mathematical operation

# you can check out all signal types by entering the following command

kill -l

# Notice the numbers before each signal name, you can use that number to avoid typing long strings in trap:

# 2 corresponds to SIGINT and  15 corresponds to SIGTERM
trap booh 2 15

# one of the common usage of trap is to do cleanup temporary files:

trap "rm -f fodler; exit" 2


