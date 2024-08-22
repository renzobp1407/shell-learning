# Pipelines, often called pipes, is a way to chain commands and connect output from one command to the input of the next.
# A pipeline is represented by the pipe character: |. It's particularly handy when a complex or long input is required for a command.

# command1 | command2

# By default pipelines redirects only the standard output, 
# if you want to include the standard error you need to use the form |& which is a short hand for 2>&1 |.

ls / | wc -l

ls / | head

ls / | grep  # This will grab any line/file that has a matching pattern in it

cat /proc/cpuinfo | grep processor | wc -l