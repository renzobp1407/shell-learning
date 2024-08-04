# Shell variables are created once they are assigned a value. A variable can contain a number, a character or a string of characters

# examples
PRICE_PER_APPLE=5
MyFirstLetters=ABC
greeting='Hello        world!'

# A backslash "\" is used to escape special character meaning
echo "the price of the apple today is: /$HK $PRICE_PER_APPLE"

# Encapsulating the variable name with ${} is used to avoid ambiguity
echo "The first 10 letters in the alphabet are: ${MyFirstLetters}DEFGHIJ "

# Encapsulating the variable name with "" will preserve any white space values
echo $greeting " now with spaces: $greeting"

# Variables can be assigned with the value of a command output. This is referred to as substitution. 
# Substitution can be done by encapsulating the command with `` (known as back-ticks) or with $()

FILELIST=`ls`
# FileWithTimeStamp=/tmp/my-dir/file_$(/bin/date +%Y-%m-%d).txt

#!/bin/bash
# Change this code
BIRTHDATE="Jan 1, 2000"
Presents=10
BIRTHDAY=$(date -d "${BIRTHDATE}" +%A)


# Testing code - do not change it

if [ "$BIRTHDATE" == "Jan 1, 2000" ] ; then
    echo "BIRTHDATE is correct, it is $BIRTHDATE"
else
    echo "BIRTHDATE is incorrect - please retry"
fi
if [ $Presents == 10 ] ; then
    echo "I have received $Presents presents"
else
    echo "Presents is incorrect - please retry"
fi
if [ "$BIRTHDAY" == "Saturday" ] ; then
    echo "I was born on a $BIRTHDAY"
else
    echo "BIRTHDAY is incorrect - please retry"
fi