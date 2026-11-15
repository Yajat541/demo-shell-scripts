#!/bin/bash

<<info

loops: anything you want to repaeat again and again
1...10
start=1
end=10

info

for (( num=1; num<=10; num++ ))
do
	echo "$num"
	echo "hello"
done



