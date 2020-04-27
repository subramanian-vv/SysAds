#!/bin/bash
# Running the script as a super user
# Creating directories
mkdir -p /home/useraccounts
mkdir -p /home/useraccounts/army
mkdir -p /home/useraccounts/navy
mkdir -p /home/useraccounts/airforce
# Creating groups
addgroup army
addgroup navy
addgroup airforce
# Creating groups
useradd -g 1001 -d /home/useraccounts/army armygen
useradd -g 1002 -d /home/useraccounts/navy navymar
useradd -g 1003 -d /home/useraccounts/airforce airchief
useradd -G 1001,1002,1003 -d /home/useraccounts commander

for((i=1;i<=50;i++))
do
        mkdir -p /home/useraccounts/army/army$i
	mkdir -p /home/useraccounts/navy/navy$i
	mkdir -p /home/useraccounts/airforce/airforce$i
	useradd -g 1001 -d /home/useraccounts/army/army$i army$i
	useradd -g 1002 -d /home/useraccounts/navy$i navy$i
	useradd -g 1003 -d /home/useraccounts/airforce$i airforce$i
done
