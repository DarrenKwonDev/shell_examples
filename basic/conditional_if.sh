#!/bin/bash

if [ $# == 1 ]; then
    echo "one argument"
elif [ $# == 2 ]; then
    echo "two arguments"
else
    echo "other arguments"
fi

# /bin/ls란 파일이 존재한다면.
if [ -f /bin/ls ]; then
    echo "/bin/ls exists"
fi

# /bin 디렉토리가 존재한다면.
if [ -d /bin ]; then
    echo "/bin exists"
fi

num=3
if (("$num" < 10)); then
    echo "num less than 10"
fi
