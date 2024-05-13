#!/bin/bash

IFS='.' read -ra octets <<< "$1"

dec_to_bin() {
    local n=$1
    local bin=""
    while [ $n -gt 0 ]; do
        bin=$((n % 2))$bin
        n=$((n / 2))
    done
    
    while [ ${#bin} -lt 8 ]; do
        bin="0"$bin
    done
    echo $bin
}

echo -n "$(dec_to_bin ${octets[0]})"
for i in {1..3}; do
    echo -n ".$(dec_to_bin ${octets[i]})"
done

echo ""
