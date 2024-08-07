my_array=(apple banana "fruit basket" orange)
new_array[2]=apricot

echo  ${#my_array[@]}  # 4

echo  ${#my_array[3]}  # orange - note that curly brackets are needed

# adding another array element, first element is 0
my_array[4]="carrot"                    # value assignment without a $ and curly brackets
echo ${#my_array[@]}                    # 5
echo ${my_array[${#my_array[@]}-1]}     # carrot, final of the array minus 1


#!/bin/bash
NAMES=( John Eric Jessica )
# write your code here
NUMBERS=( 1 2 3 )
STRINGS=( "hello" "world" )
NumberOfNames=${#NAMES[@]}
second_name=${NAMES[1]}
echo ${NUMBERS[@]}
echo ${STRINGS[@]}
echo "The number of names listed in the NAMES array: $NumberOfNames"
echo "The second name on the NAMES list is:" ${second_name}