#!/usr/bin/env bash

if [[ -z $1 ]]; then
    echo "Please provide a file to check."
    exit
else

    result=$(curl -H "Content-Type: text/html; charset=utf-8" -s --data-binary @${1} https://validator.w3.org/nu/?out=gnu)

    if [[  -z ${result} ]]; then
        echo "check passed"
    else
        echo "check NOT passed"
        echo ${result}
    fi

fi
