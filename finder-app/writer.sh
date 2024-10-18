#!/bin/bash
# Writer for assignment 1

if [ $# -ne 2 ]; then
	echo "Error: wrong number of arguments."
	echo "Usage: writer.sh <writefile> <writestr>"
	exit 1
fi;

writefile=$1
writestr=$2

mkdir -p $(dirname "$writefile")
touch $writefile
echo $writestr > $writefile
