#!/bin/bash


# Sources: 
# https://stackoverflow.com/questions/26771279/counting-number-of-lines-in-a-file-using-grep-and-wc
# https://wiki.centos.org/HowTos/I_need_the_Kernel_Source

# First enter this command : yum install kernel-devel
# This gives you the kernel-devel package


# Filter the kernel-devel files matching .h header and the word "magic".
# Then pipe it to wc to count the number of lines that contain the word "magic" 

grep -ir --include=*.h "magic" /usr/src/kernels/ | wc -l


