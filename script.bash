#!/bin/bash

x=$1
y=$2

sum=$(($x + $y))
diff=$(($x - $y))
prod=$(($x * $y))

echo "$sum $diff $prod"
