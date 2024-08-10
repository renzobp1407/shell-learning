NAME="John"

if [ "$NAME" = "John" ]; then
  echo "True - my name is indeed John"
fi 

#also with else
# be careful with the spaces between the braces and other syntaxis

NAME2="BILL"

if [ "$NAME2" = "John" ]; then
  echo "True - my name is indeed John"
else  
  echo "false"
  echo "You must mistaken me for $NAME2"
fi 

NAME="George"
if [ "$NAME" = "John" ]; then
  echo "John Lennon"
elif [ "$NAME" = "George" ]; then
  echo "George Harrison"
else
  echo "This leaves us with Paul and Ringo"
fi