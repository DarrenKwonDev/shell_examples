#!/bin/bash

pids=$(ps --no-header -eo pid)
for pid in $pids; do
    proc_file="/proc/$pid/stat"
    if [[ -f $proc_file ]]; then
        flag=$(cat "$proc_file" 2>/dev/null | awk -F " " '{print $9}')

        if [[ $flag -eq 0 ]]; then
            continue
        fi

        # flag&0x00200000 연산을 통해 1이면 kernel task
        if (($flag & 0x00200000)); then
            name=$(cat /proc/$pid/stat | awk -F " " '{printf $2}') && echo "$name $pid is kernel task"
        fi
    fi
done
