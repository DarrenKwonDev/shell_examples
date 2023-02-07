#!/bin/bash

OLD=$1
NEW=$2

if [[ $OLD == "" || $NEW == "" ]]; then
    echo "format error"
    exit 1
fi

find ./ -type f -readable -writable -exec sed -i "s/$OLD/$NEW/g" {} \;
