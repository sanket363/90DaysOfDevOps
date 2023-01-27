#!/bin/bash
# Assign arguments to variables                                                                                                                                                                 
dirname=$1
start=$2
end=$3
# Iterate from start to end
for i in $(seq $start $end)
    do                                                                                                                                                                                                      
    # Create directory with dynamic name
    mkdir "$dirname$i";
done