# Basic function on shell

function function_name {
    echo "this is a function"
}

# it can be called by simply writing their names

function function_b {
    echo "Function B."
}
function function_A {
    echo $1
}
function adder {
    echo "$(($1 + $2))"
}

# Calling a function
# Pass a parameter
function_A "Function A" # Function A
function_b

adder 12 56 # 68

# $1 and $2 refers to the parameters passed to the function

# Exercise

function ENGLISH_CALC {
  a=$1
  b=$3
  signn=$2
  if [ $signn == "plus" ]; then
    echo "$a + $b = $(($a+$b))"
  elif [ $signn == "minus" ]; then
    echo "$a - $b = $(($a-$b))"
  elif [ $signn == "times" ]; then
    echo "$a * $b = $(($a*$b))"
  fi
}

# testing code
ENGLISH_CALC 3 plus 5
ENGLISH_CALC 5 minus 1
ENGLISH_CALC 4 times 6