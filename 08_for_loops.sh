# basic construct

for arg in [list]
do
 echo "this is a for"
done

# loop on array member
# [@] prints all on array list
NAMES=(Joe Jenny Sara Tony)
for n in ${NAMES[@]} ; do
  echo "My name is $n"
done

# loop on command output results

for f in $( ls prog.sh /etc/localtime ) ; do
  echo "File is: $f"
done


# basic While construct
while [ condition ]
do
 "this is a while"
done


# Basic While loop

COUNT=4
while [$COUNT -gt 0]; do
  echo "Value of count is: $COUNT"
  COUNT=$(($COUNT - 1))
done

# bash until loop = this is when the loops keeps executin intil de condition is false
# this is opposite to while construct
# basic construct

until [ condition ]
do
 command(s)...
done

# Example

COUNT2=1
until [ $COUNT2 -gt 5]; do
  echo "valve of count is: $COUNT2"
  $COUNT2=$(($COUNT2 + 1))
break  


# break and continue
# Prints out 0,1,2,3,4

COUNT3=0
while [ $COUNT3  -ge 0 ]; do
  echo "Value of COUNT is: $COUNT3"
  COUNT3=$((COUNT3+1))
  if [ $COUNT3 -ge 5 ]; then
    break
  fi
done

# Prints out only odd numbers - 1,3,5,7,9

COUNT4=0
while[ $COUNT4 -lt 10 ]; do
  COUNT4=$((COUNT4+1))
  if [ $(($COUNT4 % 2 )) = 0 ]; then
    continue
  fi
  echo $COUNT4  
done

# Exercise

NUMBERS=(951 402 984 651 360 69 408 319 601 485 980 507 725 547 544 615 83 165 141 501 263 617 865 575 219 390 237 412 566 826 248 866 950 626 949 687 217 815 67 104 58 512 24 892 894 767 553 81 379 843 831 445 742 717 958 609 842 451 688 753 854 685 93 857 440 380 126 721 328 753 470 743 527)

# write your code here
for gg in ${NUMBERS[@]}; do
	
    if [ $gg == 237 ]; then
    	break;
    elif [ $(($gg % 2)) == 0 ]; then
    	echo $gg
    fi
done

