#! /usr/bin/python

import sys

# import sys to use sys.argv
# sys.argv: a list of strings which the command line is used to execute the script
# The files is counted as a argument
# Open and read the arguments ( filenames ) and print the filenames contents  

for i in range(1,len(sys.argv)):
    with open(sys.argv[i], 'r') as f:
	contents = f.read()
	sys.stdout.write(contents)



