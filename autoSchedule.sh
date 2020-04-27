#! /bin/bash
# Running the script as a super user
for((i=1;i<=50;i++))
do
	#Army
	cd /root
	# Searching for cases with the required conditions
	cat /root/pos.txt | grep -wE "$(date +"%F").*Army$i" > b.txt
	chmod 777 /home/useraccounts/army/army$i
	cd /home/useraccounts/army/army$i
	# Removing unwanted data
	cat /root/b.txt | sed "s/-00.00.00 Army${i}//g" > post_allotted.txt
	# Changing permissions of the file
	chown army$i post_allotted.txt
	chgrp army post_allotted.txt
	chmod 774 /home/useraccounts/army/army$i	
	#Navy
	cd /root
	# Searching for cases with the required conditions
	cat /root/pos.txt | grep -wE "$(date +"%F").*Navy$i" > b.txt
        chmod 777 /home/useraccounts/navy/navy$i
        cd /home/useraccounts/navy/navy$i
	# Removing unwanted data
        cat /root/b.txt | sed "s/-00.00.00 Navy${i}//g" > post_allotted.txt
	# Changing permissions of the file
	chown navy$i post_allotted.txt
        chgrp navy post_allotted.txt
	chmod 774 /home/useraccounts/navy/navy$i
	#AirForce
	cd /root
	# Searching for cases with the required conditions
	cat /root/pos.txt | grep -wE "$(date +"%F").*AirForce$i" > b.txt
        chmod 777 /home/useraccounts/airforce/airforce$i
        cd /home/useraccounts/airforce/airforce$i
	# Removing unwanted data
        cat /root/b.txt | sed "s/-00.00.00 AirForce${i}//g" > post_allotted.txt
	# Changing permissions of the file
	chown airforce$i post_allotted.txt
        chgrp airforce post_allotted.txt
	chmod 774 /home/useraccounts/airforce/airforce$i
done
# Crontab scheduling given in a separate text file
