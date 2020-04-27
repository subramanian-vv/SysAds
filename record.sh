#! /bin/bash
# Running the script as a super user
# Getting input from the troop chief
cd /root
echo -n "Enter 1 for army, 2 for navy, 3 for airforce"
read des
echo -n "Enter the day in number: 1-Mon, 2-Tue, 3-Wed, 4-Thu, 5-Fri, 6-Sat, 7-Sun"
read num
case $num in
	1)
		day="last monday"
		;;
	2)
                day="last tuesday"
                ;;
	3)
                day="last wednesday"
                ;;
	4)
                day="last thursday"
                ;;
	5)
                day="last friday"
                ;;
	6)
                day="last saturday"
                ;;
	7)
                day="last sunday"
                ;;
esac
case $des in
	1)
		pos="army"
		;;
	2)
		pos="navy"
		;;
	3)
		pos="airforce"
		;;
esac
# Searching for the specific case
cat attendance.txt | grep -iE "$(date -d "${day}" +"%F").*${pos}" > c.txt
cd /home/useraccounts/$pos
# Removing unwanted data
cat /root/c.txt | sed "s/-06.00.00//g" > record_day.txt
# Changing file permissions
case $des in
	1)
		chown armygen record_day.txt
	        chgrp army record_day.txt
		;;
	2)
		chown navymar record_day.txt
	        chgrp navy record_day.txt
		;;
	3)
		chown airchief record_day.txt
	        chgrp airforce record_day.txt
		;;
esac		
chmod 774 record_day.txt
