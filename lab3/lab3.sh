#!/bin/bash

# Problem 1

find /bin /sbin /usr/bin /usr/sbin -user root -perm -4000

read -p "Hit any key to continue to problem 2"

# Problem 2

find / -perm -4000 -or -perm -2000

read -p "Hit any key to continue to problem 3"

# Problem 3

find /var -ctime -20

read -p "Hit any key to continue to problem 4"

# Problem 4

find /var -type f -size 0 

read -p "Hit any key to continue to problem 5"

# Problem 5 

find /dev -not -type f -and -not -type d -ls -printf %a

printf "\n"
read -p "Hit any key to continue to problem 6"

# Problem 6 

find /home -type d -not -user root -exec chmod 711 {} \;

read -p "Hit any key to continue to problem 7"

# Problem 7 

find /home -type f -not -user root -exec chmod 755 {} \;

read -p "Hit any key to continue to problem 8"
# Problem 8

find /etc -ctime -5

