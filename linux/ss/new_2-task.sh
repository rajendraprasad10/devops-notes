#!/bin/bash

echo "==========================="
echo "      SIMPLE CALCULATOR"
echo "==========================="

# Read input
read -p "Enter first number: " num1
read -p "Enter second number: " num2

echo ""
echo "Choose an operation:"
echo "1. Addition (+)"
echo "2. Subtraction (-)"
echo "3. Multiplication (*)"
echo "4. Division (/)"
echo "5. Modulus (%)"

read -p "Enter your choice (1-5): " choice

case $choice in
    1)
        result=$((num1 + num2))
        echo "Result: $num1 + $num2 = $result"
        ;;
    2)
        result=$((num1 - num2))
        echo "Result: $num1 - $num2 = $result"
        ;;
    3)
        result=$((num1 * num2))
        echo "Result: $num1 * $num2 = $result"
        ;;
    4)
        if [ "$num2" -eq 0 ]; then
            echo "Error: Division by zero is not allowed."
        else
            result=$((num1 / num2))
            echo "Result: $num1 / $num2 = $result"
        fi
        ;;
    5)
        if [ "$num2" -eq 0 ]; then
            echo "Error: Modulus by zero is not allowed."
        else
            result=$((num1 % num2))
            echo "Result: $num1 % $num2 = $result"
        fi
        ;;
    *)
        echo "Invalid choice! Please select a number between 1 and 5."
        ;;
esac