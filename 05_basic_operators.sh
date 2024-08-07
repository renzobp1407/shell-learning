# Arithmetic Operators
# Simple arithmetics on variables can be done using the arithmetic expression: $((expression))

A=3
b=$((100 * $A + 5))

# a + b addition
# a - b substraction
# a * b multiplication
# a / b division
# a % b module
# a ** b exponentiation


#!/bin/bash 

COST_PINEAPPLE=50

COST_BANANA=4

COST_WATERMELON=23

COST_BASKET=1

TOTAL=$(( $COST_BASKET + $COST_PINEAPPLE + $COST_BANANA + $COST_WATERMELON ))

echo "Total Cost is $TOTAL"