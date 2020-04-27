#! /bin/bash
# Running the script as a super user
#Army General
cd /root
cat /root/attendance.txt | grep -E "$(date +"%F").*Army.*YES" > b.txt
cd /home/useraccounts/army
cat /root/b.txt | sed "s/-06.00.00//g;s/YES//g" > attendance_record.txt
chown armygen attendance_record.txt
chgrp army attendance_record.txt
chmod 774 attendance_record.txt
#Navy Marshal
cd /root
cat /root/attendance.txt | grep -E "$(date +"%F").*Navy.*YES" > b.txt
cd /home/useraccounts/navy
cat /root/b.txt | sed "s/-06.00.00//g;s/YES//g" > attendance_record.txt
chown navymar attendance_record.txt
chgrp navy attendance_record.txt
chmod 774 attendance_record.txt
#AirForce Chief
cd /root
cat /root/attendance.txt | grep -E "$(date +"%F").*AirForce.*YES" > b.txt
cd /home/useraccounts/airforce
cat /root/b.txt | sed "s/-06.00.00//g;s/YES//g" > attendance_record.txt
chown airchief attendance_record.txt
chgrp airforce attendance_record.txt
chmod 774 attendance_record.txt
# Crontab scheduling given in a separate text file
