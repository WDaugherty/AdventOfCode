#!/bin/bash

read -p "Enter the year for this Advent: " folder_name

# Create the new folder in the src directory
mkdir src/$folder_name

# Create 24 subdirectories from day-1 to day-24
for ((i=1; i<=24; i++))
do
    mkdir src/$folder_name/day-$i

    # Create 5 subdirectories within each day subdirectory
    mkdir src/$folder_name/day-$i/Rust
    mkdir src/$folder_name/day-$i/GO
    mkdir src/$folder_name/day-$i/Python
    mkdir src/$folder_name/day-$i/Perl
    mkdir src/$folder_name/day-$i/C++
done

echo "New folder and subdirectories created successfully!"