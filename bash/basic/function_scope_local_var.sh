#!/bin/bash

a=100
function test_func() {
    a=3 # scope 밖에서 GC 당하지 않음. 전역 변수.
}
test_func
echo $a # 3.

b=100
function test_func2() {
    local b=3 # 지역 변수를 직접 명시해야 함
}
test_func2
echo $b # 100
