#!/bin/bash

count=0
while ((count < 5)); do
    echo "count: $count"
    ((count++))
done

while true; do
    echo "oh"
    sleep 1
done
