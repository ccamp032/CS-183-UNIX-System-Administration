#!/bin/bash


## dd command
 
## Description:
# dd command let's you copy and convert files from one place to another. 
## Example:
# convert ddtest.txt into ddtestoutput.txt all in uppercase

echo "dd if=ddtest.txt of=ddtestoutput.txt conv=ucase"
read -p "Hit enter to continue to command find"

## find command

## Description:
# find command use to search a file or directory of the file system
## Example:
# Find all files across the entire system that have setuid or setgid enabled  

echo "find /bin /sbin /usr/bin /usr/sbin -usr root -perm -4000"
read -p "Hit enter to continue to command file"

## file command

## Description:
# file command is use to determine the type of a file 
## Example:
# Display the the type of files in the current directory

echo "file *"
read -p "Hit enter to continue to command fuser"

# Note: yum install psmisc to use the fuser command

## fuser command

## Description:
# fuser command finds which process is using a file, a directory or a socket. 
## Example:
# -v : Verbose mode. Processes are shown in a ps-like style.
# prints the name of the current directory, process owner (USER) , process id (PID) ,
# access type(ACCESS) and command (COMMAND)

echo "fuser *"
read -p "Hit enter to continue to command grep"

## grep command

## Description:
# grep commmand finds and prints lines in files that match a pattern.
## Example:
# -i : ignore case distinctions in both the pattern and the input files
# Searches a user named ccamp032 in /etc/passwd. 

echo "grep -i "ccamp032" /etc/passwd"
read -p "Hit enter continue to command host"

# Note: yum install bind-utils to use the host command

## host command

## Description:
# DNS (Domain Name System ) lookup operations
# Find the IP address or a certain domain name 
## Example:
# Display google.com domain names and associated ip addresses

echo "host google.com"
read -p "Hit enter continue to command ldd" 

## ldd command

## Description:
# ldd command is use to know the share library dependenices of an executable 
## Example:
# Display the share library dependenices for grep command

echo "ldd /bin/grep"
read -p "Hit enter continue to command lsof"

# Note: yum install lsof to use the lsof command

## lsof command

## Description:
# lsof: List Of Open File
# Linux/Unix conisder everything as a file and maintains folder.(ex. file system)
# Provides a list of files that are opened.

## Example:
# -R :  lsof to list the parent process ID information
# List the files opened by parent process Id lsof command

echo "lsof -R"
read -p "Hit enter continue to command mount"

## mount command

## Description:
# mount command mounts a storage device or file system and etc
## Example:
# Display only certain file system 
# Print the ext4 partitions 

echo "mount -t ext4"   
read -p "Hit enter continue to command ps"

## ps command

## Description:
# ps: process status
# ps command is use to view information about processes on a system 
## Example:
# Display every process running with root user privileges

echo "ps -U root -u root"
read -p "Hit enter continue to commmand pkill"

## pkill command

## Description:
# pkill sends signals to the processes of a running program
## Example:
# kill the vi process

echo "pkill vi" 
read -p "Hit enter continue to command netstat"

# Note: yum install net-tools to use netstat command

## netstat command

## Description:
# netstat command displays various network related information such as network connections,
# routing tables , interface statistics, and etc
## Example:
# Display all the network connection

echo "netstat -a" 
read -p "Hit enter continue to command renice"

## renice command

## Description:
# renice command allows you to change and modify the scheduling priority of an already 
# running process
## Example:
# Change the priority of process ID's 987 and 32 and all processes owned by users daemon and root

echo "renice +1 987 -u daemon root -p 32"
read -p "Hit enter continue to command rsync"

## rsync command

## Description:
# rsync command synchronizes files from a source to a destination , on a local machine 
# or over a secure network 
## Example:
# copy the ddtest.txt file from directory listed below to /opt/backup folder.

echo "rsync -zvh /root/CS183-UNIX-System-Administration/hw2/ddtest.txt /opt/backup"
read -p "Hit enter continue to command time"

## time command

## Description:
# time command is use to print a summary of real time , user cpu time and system cpu time
# spent by executing a command when it terminates
## Example:
# -p : print time  in POSIX format
# sleep 3 is used to create a dummy job that lasts 3 seconds 

echo "time -p sleep 3" 
read -p "Hit enter continue to command ssh"

## ssh command

## Description:
# ssh command instructs the system to establish an encrypted secure connection with the host machine
## Example:
# Ucr ccamp032 Remote control

echo "ssh ccamp032@bolt.cs.ucr.edu"
read -p "Hit enter continue to command stat"

## stat command

## Description:
# stat command is use to display detailed information about the given files or file systems
## Exammple:
# Display the status of the file, ddtest.txt 

echo "stat ddtest.txt"
read -p "Hit enter continue to command strace"

# Note: yum install strace to use the strace command

## strace command

## Description:
# strace command allows us to trace the system calls and signals 
## Example:
# Display the trace of ps execution

echo "strace ps"
read -p "Hit enter continue to command uname"

## uname command

## Description:
# uname command is use to print basic information about the operating system name
# and system hardware
## Example:
# Prints the kernel name and version number and release
echo "uname -rs"
read -p "Hit enter continue to command wget"
## wget command

## Description:
# wget command is use to download files from the web
## Example:
# Download the emacs source code from the GNU site 

echo "wget http://ftp.gnu.org/gnu/emacs/emacs-24.4.tar.gz"
echo "Done!"
