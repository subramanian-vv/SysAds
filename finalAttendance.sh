#! /bin/bash
# Running the script as a super user
cd /root
# Appending data into a single text file
echo "ARMY Attendance" > arm.txt
echo "NAVY Attendance" > nav.txt
echo "AIRFORCE Attendance" > air.txt
cat attendance.txt | grep -E "Army" > d.txt
cat d.txt | sed "s/-06.00.00//g" >> arm.txt
cat attendance.txt | grep -E "Navy" > e.txt
cat e.txt | sed "s/-06.00.00//g" >> nav.txt
cat attendance.txt | grep -E "AirForce" > f.txt
cat f.txt | sed "s/-06.00.00//g" >> air.txt
cat air.txt >> nav.txt
cat nav.txt >> arm.txt
cd /home/useraccounts
cp /root/arm.txt attendance_report.txt
chown commander attendance_report.txt
chgrp commander attendance_report.txt
chmod 774 attendance_report.txt
