#!/bin/sh

tmp=/tmp/$$

echo "input 2 argments" > $tmp-args

ERROR_EXIT () { 
	echo "$1" >&2
	rm -f $tmp-*
	exit 1
}

# テスト開始 
# test1: 引数の数が足りない
./kadai3.sh 2> $tmp-ans && ERROR_EXIT "error in test1-1"
diff $tmp-ans $tmp-args || ERROR_EXIT "error in test1-2"
echo "test1 OK"


# test2: 32と16の最大公約数は16
result=$(./kadai3.sh 32 16)
if [ $result = 16 ] ; then
	echo "test2 OK"
else
	echo "NG"
	exit 1
fi


# test3: 32と12の最大公約数は4
result=$(./kadai3.sh 32 12)
if [ $result = 4 ] ; then
	echo "test3 OK"
	exit 0
else
	echo "error in test3"
	exit 1
fi
