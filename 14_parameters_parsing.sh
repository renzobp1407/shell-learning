# Explanation from https://www.geeksforgeeks.org/how-to-pass-and-parse-linux-bash-script-arguments-and-parameters/

bash scriptname.sh 

# The above command will just run the script without passing the parameters.
# Whereas the command below will pass the arguments to the script. 

bash scriptname.sh parameter1 parameter2 parameter3 nth-parameter

#this is how to access a parameter

#!/bin/bash

echo "1st parameter = $1 "
echo "2nd Parameter = $2 "

# if we have more than 9 parameters, we must user ${}

echo "10th paramter = ${10}"

# Assign to a bash variable

#!/bin/bash

a=$1
b=$2
p=$(($a*$b))
echo "The product of $a and $b = $p"

# We also have the ability to check for any NULL or empty parameters passed using the -z or -n flags. 

#!/bin/bash

if [[ -z $1 ]]; then
   echo "No parameter passed"
else
   echo "Parameter passed = $1"
fi      

# Command on shell: 

bash pos.sh
bash pos.sh 4

# The -z flag checks for any NULL or uninitialized variables in BASH. The -z flag returns true if the variable passed is NULL or uninitialized

# We can also use -n flag which returns true if no parameters are passed, so we have to make use of ! to reverse the condition.

#!/bin/bash

if [[ ! -n $1 ]];
then 
    echo "No parameter passed."
else
    echo "Parameter passed = $1"
fi

# Reading Multiple Arguments with For or While loop

# We can use “@” variable to access every parameter passed to the script via the command line.

#!/bin/bash

for i in $@
do
   echo -e "$i\n"
done   

# or We can also print the arguments using the while loop and the environmental variables of BASH.

#!/bin/bash

i=$(($#-1))
while [ $i -ge 0 ];
do
    echo ${BASH_ARGV[$i]}
    i=$((i-1))
done

# We are using the variable ‘#‘ as it holds the number of parameters passed in.
# We simply use the BASH_ARGV array to access the parameters and print its value

# Reading With Parameter Names 

# Using getopts to parse arguments and parameters
# We can use the getopts program/ command to parse the arguments passed to the script in the command line/ terminal by using loops and switch-case statements. 

#!/bin/bash

while getopts n:c: option
do 
    case "${option}"
        in
        n)nation=${OPTARG};;
        c)code=${OPTARG};;
    esac
done

echo "Nation : $nation"
echo "code   : $code"

# argument in line:

bash argsopts.sh -n "India" -C "IND"

# Accessing the number of Parameters passed
echo "The number of arguments passed in are : $#"

# Printing Values of All Arguments
echo "The arguments passed in are : $@"

