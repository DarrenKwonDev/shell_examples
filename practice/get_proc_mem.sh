#!/bin/bash

# 멀티 프로세스인 앱들의 메모리 사용량을 집계하여 확인하기 위함
if [[ "$1" == "" ]]; then
    whole_mem_usage=$(ps -eo pmem,comm --no-headers | awk -F " " '{print $1}' | paste -s -d+ | bc)
    echo "whole mem usage: $whole_mem_usage"
    exit 0
fi

proc_count=$(ps -eo comm --no-headers | grep "$1" | wc -l)
if [[ $proc_count -eq 0 ]]; then
    echo "$1 no process found"
    exit 0
fi

proc_mem_usage=$(ps -eo pmem,comm --no-headers | grep "$1" | awk -F " " '{print $1}' | paste -s -d+ | bc)
echo "$1 mem usage: $proc_mem_usage"

exit 0
