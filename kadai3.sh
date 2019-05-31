#!/bin/sh

if [ $# -ne 2 ]; then
	echo "input 2 argments" 1>&2
	exit 1
fi

a=$1
b=$2
while [ $b -ne 0 ]; do
  remainder=$(( $a % $b ))
  a=$b
  b=$remainder
done
echo $a

