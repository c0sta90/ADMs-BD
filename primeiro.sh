#!/bin/bash

greeting="hello world"

echo $greeting

fruits=("apple" "banana" "cherry")

for fruit in "${fruits[@]}"; do
    echo $fruit
done

function greet() {
local name=$1
echo "Hello, $name!"

}

if [-f "Untitled-1.sh"];then
    echo "The file exist."
else
    echo "The file dont exist"
fi