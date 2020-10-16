#!/bin/bash


#Sources:
#

#local file location and log file location
filepath="/media/sf_virtualbox_shared/hello.txt"
savepath = "/var/log/cs183/uptime.log"
#save_path="/media/sf_virtualbox_shared/uptime.log"



# Lab2 part 3 format
thedate="$(date +'%m-%d-%y')" 
thetime="$(date +'%H:%M:%S')"
thefile="- File \"full/path/to/lab2-test\""



# if the file exist
if [ -f $filepath ]
then 
	# if the log file exist
	if [ -f $savepath ]
	then
		# search for the last word in the last log 
		answer=$(tail -n 1 ${savepath} | awk '{print $NF}')
		# if the file was lost
		if [ "$answer" != "found" ]
		then 
			echo -e "${thedate} ${thetime} ${thefile} has been found"  >> ${savepath}
		fi
	# if the log file doesn't exist
	else 
		
		echo -e "${thedate} ${thetime} ${thefile} has been found"  >> ${savepath}
	fi
else 
	
	# if the log file exist
	if [ -f $savepath ]
	then
		
		answer=$(tail -n 1 ${savepath} | awk '{print $NF}')
		#if the file was found
		if [ "$answer" == "found" ]
		then 
			echo -e "${thedate} ${thetime} ${thefile} has been lost" >> ${savepath}
		fi
	# if the log file doesn't exist
	else
		
		echo -e "${thedate} ${thetime} ${thefile} has been lost" >> ${savepath}
	fi
fi