#!/bin/bash

# Take user input for the first number
echo "Enter the first number:"
read num1

# Take user input for the second number
echo "Enter the second number:"
read num2

# Compare the numbers
if [ $num1 -gt $num2 ]; then
  echo "The first number is greater than the second number."
else
  echo "The first number is not greater than the second number."
fi
