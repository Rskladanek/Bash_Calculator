#!/bin/bash

echo "What mathematical operation do you want to perform?"
echo "###############"
echo "+, -, *, / "
echo "###############"

read -p "Enter operation: " operation

read -p "Write two numbers separated by a space: " nr1 nr2

case $operation in
    "+")
        result=$((nr1 + nr2))
        printf "%f\n" $result
        ;;
    "-")
        result=$((nr1 - nr2))
        printf "%f\n" $result
        ;;
    "*")
        result=$((nr1 * nr2))
        printf "%f\n" $result
        ;;
    "/")
        # Check if divisor is zero
        if [[ $nr2 -eq 0 ]]; then
            echo "Division by zero is not allowed."
        else
            result=$((nr1 / nr2))
            printf "%f\n" $result
        fi
        ;;
    *)
        echo "Unsupported operation."
        ;;
esac


