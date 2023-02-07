#!/bin/bash

# 숫자 더하기
a=$((20 + 20))
b=20+20
((c = 20 + 20))
echo $a, $b, $c # 40, 20+20, 40

# 문자열 더하기
str1=hello
str2="world" # ""를 붙이나 안 붙이나 똑같아

str+=$str1
str+=" "
str+=$str2

echo "$str" # hello world

test=$str1+$str2
echo $test # hello+world

# substring
str="abcdefghijklmnopqrstuvwxyz"
sub_str=${str:1:2} # 1번째부터 2개. index는 0부터 시작
echo "$sub_str"    # bc
