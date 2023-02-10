#!/bin/bash

# row. 가로로 주욱 출력됨
a=$(ls /usr/bin)
echo "$a"

# col. 세로당 1건씩
for i in $a; do
    echo "$i"
done

# row. paste 명령어의 -s 옵션으로 가로로 출력
for i in $a; do
    echo "$i"
done | paste -s
