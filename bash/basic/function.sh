#!/bin/bash

function test_func() {
    return 5
}
test_func # 함수 실행
echo $?   # 5
