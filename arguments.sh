#!/bin/bash

# bash arguments.sh one
# bash arguments.sh one two
# bash arguments.sh one two three
echo total arguments: $#
echo 1st argument: "$1"
echo 2st argument: "$2"

echo this script file name: "$0" # arguments.sh
echo all arugments : "$@"        # one two three
