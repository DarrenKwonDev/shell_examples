#!/bin/bash

start="$1"
curr=$(date +%Y-%m-%d)
curr_y=$(date +%Y)
re='^[0-9]+$'

if [[ $1 == "" ]]; then
    start="$curr_y-01-01"
    end=$curr
elif ! [[ $1 =~ $re ]]; then
    echo "year format error"
    exit 1
elif [[ ${#start} != 4 ]]; then
    echo "year format error"
    exit 1
else
    end="$start-12-31"
    start="$start-01-01"
fi

echo "search date range : $start ~ $end:"

files=$(ls ./)

for file in $files; do
    printf "%s :" "$file"
    git rev-list --after="$start" --before="$end" --count --no-merges HEAD -- "$file"

done | sort -k2 -nr | awk '{printf("%20s %5d\n", $1, $2)}' | nl
