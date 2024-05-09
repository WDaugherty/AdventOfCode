#!/bin/bash

read -p "Enter the year for this Advent: " folder_name

# Check if the year folder already exists
if [ -d "src/$folder_name" ]; then
    echo "Year folder already exists. Creating missing subdirectories."

    mkdir test/$folder_name

    # Create 24 subdirectories from day-1 to day-24 if they don't already exist
    for ((i=1; i<=24; i++))
    do
        mkdir -p test/$folder_name/day-$i
        
        if [ ! -d "src/$folder_name/day-$i" ]; then

           
            mkdir -p src/$folder_name/day-$i/Rust
            mkdir -p src/$folder_name/day-$i/GO
            mkdir -p src/$folder_name/day-$i/Python
            mkdir -p src/$folder_name/day-$i/Perl
            mkdir -p src/$folder_name/day-$i/C++
        else
            # Check if the sub subdirectories exist and create them if missing
            for sub_sub_dir in Rust GO Python Perl C++
            do
                if [ ! -d "src/$folder_name/day-$i/$sub_sub_dir" ]; then
                    mkdir -p src/$folder_name/day-$i/$sub_sub_dir
                    mkdir -p test/$folder_name/day-$i
                fi
            done
        fi
    done

    echo "Missing subdirectories created successfully!"
    
else
    # Create the new folder in the src directory
    mkdir src/$folder_name

    mkdir test/$folder_name

    # Create 24 subdirectories from day-1 to day-24
    for ((i=1; i<=24; i++))
    do
        mkdir src/$folder_name/day-$i
        mkdir test/$folder_name/day-$i

        # Create 5 subdirectories within each day subdirectory
        mkdir src/$folder_name/day-$i/Rust
        mkdir src/$folder_name/day-$i/GO
        mkdir src/$folder_name/day-$i/Python
        mkdir src/$folder_name/day-$i/Perl
        mkdir src/$folder_name/day-$i/C++
    done

    echo "New folder and subdirectories created successfully!"
fi