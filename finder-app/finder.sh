#!/usr/bin/bash
# Find string in file for Assignment 1
# Author: Cristian Llull T.

# Check both arguments are given
if [ $# -ne 2 ];
then
	echo "Error: missing arguments."
	echo "Usage: $0 <filesdir> <searchstr>"
	exit 1
fi;

# Get values
filesdir=$1;
searchstr=$2;

# Check if a valid path is given
if [ ! -d $filesdir ]; then
	echo "Directory $filesdir does not exist"
	exit 1
fi;


# Now count:
# 1) number of files in the directory and subdirectory (X)
# 2) number of matching lines found in respective files (Y)
# Print: The number of files are X and the number of matching lines are Y.
num_files=$(find $filesdir -type f | wc -l)
num_lines=$(grep -r $searchstr $filesdir | wc -l)

echo "The number of files are $num_files and the number of matching lines are $num_lines"
