my_array=(apple banana "fruit basket" orange)
new_array[2]=apricot

echo  ${#my_array[@]}  # 4

echo  ${#my_array[3]}  # orange - note that curly brackets are needed

# adding another array element
my_array[4]="carrot"                    # value assignment without a $ and curly brackets
echo ${#my_array[@]}                    # 5
echo ${my_array[${#my_array[@]}-1]}     # carrot