#!/bin/bash

addition(){
        result=$((num1 + num2))
        echo "Result: $result"
}

subtraction(){
        result=$((num1 - num2))
        echo "Result: $result"
}

multiplication(){
       result=$((num1 * num2))
       echo "Result: $result"
}

division(){
        if [ "$num2" -eq "0" ]; then
          echo "Error: you can't divide by zero"
        else
          result=$((num1 / num2))
          echo "Result: $result"
        fi
}
echo "   _____      _            _       _             "
echo "  / ____|    | |          | |     | |            "
echo " | |     __ _| | ___ _   _| | __ _| |_ ___  _ __ "
echo " | |    / _\` | |/ __| | | | |/ _\` | __/ _ \| '__|"
echo " | |___| (_| | | (__| |_| | | (_| | || (_) | |   "
echo "  \_____\__,_|_|\___|\__,_|_|\__,_|\__\___/|_|   "
echo "                                                 "
echo "                                                 "
echo "                                                 "
echo " Choose an operation: "
echo " 1. Addition"
echo " 2. Subtraction"
echo " 3. Multiplication"
echo " 4. Division"
read -p " Enter your choice: " choice

read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

case $choice in
        1) addition;;
        2) subtraction;;
        3) multiplication;;
        4) division;;
        *) echo "Invalid Choice";;
esac
