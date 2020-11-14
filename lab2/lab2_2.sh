#!/bin/bash

# sources:
# https://www.cyberciti.biz/faq/understanding-etcpasswd-file-format/
# https://www.cyberciti.biz/faq/understanding-etcgroup-file/
# ttps://www.unix.com/unix-for-dummies-questions-and-answers/8035-awk-print-2-a.html
#
# /etc/passwd contains the attributes of (basic information about) each user or account
# /etc/group contains group information or defines the user groups

# groupid1(GID1): get the /etc/passwd user's group ID ; $4
# userid(UID1): get the /etc/passwd user's ID ; $3
# login(username): get the /etc/passwd user's logs in ; $1
# groupname: get the /etc/group name of the group ; $1
# groupid2(GID2): get the /etc/group user's group ID ; $3

# set the variables
groupid1=$(cat /etc/passwd | awk -F: '{print $4}')  
userid=$(cat /etc/passwd | awk -F: '{print $3}')  
login=$(cat /etc/passwd | awk -F: '{print $1}')  
groupname=$(cat /etc/group | awk -F: '{print $1}')
groupid2=$(cat /etc/group | awk -F: '{print $3}')

#set variables into array
arruid=(${userid})	 
arrlogin=(${login})
arrgroup=(${groupname})
arrgid2=(${groupid2})
arrgid1=(${groupid1})

# initialize variables to zero
i=0 #each unit
j=0 #each groupid2
k=0
z=0

for user in $login
do
##print pass
	echo -n "${user} "
	echo -n "${arruid[i]} "
	
	while [ ${arrgid1[i]} != ${arrgid2[j]} ]
	do
		j=$((j + 1))
	done
	#print matched gid group
	echo "${arrgroup[j]}"
	j=0		
	i=$((i +1)) 
done
