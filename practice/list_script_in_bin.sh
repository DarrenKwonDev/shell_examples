#!/bin/bash

# 실행이 된다고 다 script가 아님.
# /usr/bin/ldd는 Bourne-Again shell script
# file /usr/bin/scriptreplay는 script하고 했지만 ELF임

a=$(ls /usr/bin)
for i in $a; do
    # https://linuxize.com/post/how-to-check-if-string-contains-substring-in-bash/
    str=$(file /usr/bin/"$i" | grep text | grep "shell script")
    if [[ $str == *script* ]]; then
        echo "$str"
    fi
done

exit 0
