#!/bin/bash

function test_func() {
    echo "$1 $2 $3"

    echo \$@ : "$@"
    echo \$* : "$*" # not recommended. Use "$@" (with quotes) to prevent whitespace problems.

    # 의도대로 동작함.
    for v in "$@"; do
        echo "$v"
    done

    for v in "$*"; do # Since you double quoted this, it will not word split, and the loop will only run once.
        echo "$v"     # a b c 한 번에 다 출력됨
    done
}

# 함수 호출
test_func a b c

# test_func 의 리턴값. 지정하지 않았으므로 exit 0.
echo $?

exit 6
