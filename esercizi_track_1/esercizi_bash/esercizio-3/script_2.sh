#!/bin/bash

var_1=$(uname -r)
var_2=$(rpm -q kernel --qf '%{VERSION}-%{RELEASE}.%{ARCH}\n')

if [[ "$var_1" == "$var_2" ]]; then
    echo "TRUE"
else
    echo "FALSE"
fi
