#!/bin/bash

# $#: The number of arguments supplied to a script 
# $@ All the arguments are individually double quoted
# cat $@ : cat the files in the arguments 
 

# if the number of arguments equals zero then exit
if [ $# -eq 0 ]; then
    exit;
else
    cat $@  
fi

