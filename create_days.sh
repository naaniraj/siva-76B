#!/bin/bash

# Main directory counters
start=1
end=60
step=10

# Loop through each group of 10 days
while [ $start -le $end ]
do
    # Calculate end of the current group
    group_end=$((start + step - 1))
    if [ $group_end -gt $end ]; then
        group_end=$end
    fi

    # Create main directory (e.g., DAY-1-10)
    main_dir="DAY-${start}-${group_end}"
    mkdir -p "$main_dir"

    # Create subdirectories and introduction files
    for (( day=$start; day<=$group_end; day++ ))
    do
        sub_dir="${main_dir}/DAY-${day}"
        mkdir -p "$sub_dir"
        echo "i am niranjan" > "${sub_dir}/introduction"
    done

    # Move to next group
    start=$((group_end + 1))
done

