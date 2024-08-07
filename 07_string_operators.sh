#!/bin/bash
# Strings in bash
STRING="this is a string"
echo ${#STRING} #16

# Index 


STRING2="this is a string"
SUBSTRING="hat"
RESULT=$(expr index "$STRING2" "$SUBSTRING")
echo ${RESULT}
#expr index "$STRING2" "$SUBSTRING"

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