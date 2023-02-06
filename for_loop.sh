#!/bin/bash

for ((counter = 5; counter > 0; counter--)); do
    echo "counter: $counter"
done

for i in {5..1}; do
    echo "i: $i"
done

bin_files=$(ls /bin)
for file in $bin_files; do
    echo "file: $file" | grep "sh"
done
