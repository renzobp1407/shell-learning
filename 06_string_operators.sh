#!/bin/bash
# Strings in bash
STRING="this is a string"
echo ${#STRING} #16

# Index 


STRING2="this is a string"
SUBSTRING="hat"
#RESULT=$(expr index "$STRING2" "$SUBSTRING")
#echo ${RESULT}
EXP=expr index "$STRING2" "$SUBSTRING"
echo $EXP

# expr index search the first character of "substring" in this case "H" in STRING and will return 2

# Substring extraction

STRING1="this is a string"
POS=1
LEN=3
echo ${STRING1:$POS:$LEN} # his

# if :$LEN is omited, extract substring from $POS to end the file
# STRING:12 it will go to the 12th position and print the rest of the characters

STRING3="this is a string"
echo ${STRING:1} # his is a string
echo ${STRING:12} # ring

# Extract data

# Code to extract the First name from the data record
DATARECORD="last=Clifford,first=Johnny Boy,state=CA"
COMMA1=`expr index "$DATARECORD" ','`  # 14 position of first comma
CHOP1FIELD=${DATARECORD:$COMMA1}       #
COMMA2=`expr index "$CHOP1FIELD" ','`
LENGTH=`expr $COMMA2 - 6 - 1`
FIRSTNAME=${CHOP1FIELD:6:$LENGTH}      # Johnny Boy
echo $FIRSTNAME

# String replacement, first ocurrence
STRING4="to be or not to be"
echo ${STRING4[@]/be/eat}        # to eat or not to be

#String replacement, all ocurrence, 2 backslash
STRING="to be or not to be"
echo ${STRING[@]//be/eat}    # to eat or not to eat

#delete all ocurrence
STRING="to be or not to be"
echo ${STRING[@]// not/}   

#replace all ocurrence of string if at the begining starts with the string
STRING="to be or not to be"
echo ${STRING[@]/#to be/eat now}    # eat now or not to be

#replace all ocurrence of string if at the end with the string
STRING="to be or not to be"
echo ${STRING[@]/%be/eat}        # to be or not to eat

# Replace ocurrence with a substring with shell output command
STRING="to be or not to be"
echo ${STRING[@]/%be/be on $(date +%Y-%m-%d)}    # to be or not to be on 2012-06-14

#exercise
BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."

    # write your code here
    ISAY=$BUFFETT
    change1=${ISAY[@]/snow/foot}
    change2=${change1[@]//snow/}
    change3=${change2[@]/finding/getting}
    loc=`expr index "$change3" 'w'`
    ISAY=${change3::$loc+2}

# Test code - do not modify
echo "Warren Buffett said:"
echo $BUFFETT
echo "and I say:"
echo "$ISAY"