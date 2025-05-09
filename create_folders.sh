#!/bin/bash

# Loop through days 1 to 60
for i in {1..60}
do
    folder="DAY-$i"
    file="$folder/Introduction"
    
    # Create the folder
    mkdir -p "$folder"
    
    # Create the file and add content
    echo "I am Niranjan" > "$file"
done

echo "All folders and files have been created successfully!"
