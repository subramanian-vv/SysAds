#! /bin/bash
# Running the script as a super user
# Modifying permissions
chmod 774 /home/useraccounts/army
chmod 774 /home/useraccounts/navy
chmod 774 /home/useraccounts/airforce
chown armygen /home/useraccounts/army
chgrp army /home/useraccounts/army
chown navymar /home/useraccounts/navy
chgrp navy /home/useraccounts/navy
chown airchief /home/useraccounts/airforce
chgrp airforce /home/useraccounts/airforce
chown commander /home/useraccounts
chgrp commander /home/useraccounts

for((i=1;i<=50;i++))
do
        chmod 774 /home/useraccounts/army/army$i
        chmod 774 /home/useraccounts/navy/navy$i
        chmod 774 /home/useraccounts/airforce/airforce$i
        chown army$i /home/useraccounts/army/army$i
        chown navy$i /home/useraccounts/navy/navy$i
        chown airforce$i /home/useraccounts/airforce/airforce$i
        chgrp army /home/useraccounts/army/army$i
        chgrp navy /home/useraccounts/navy/navy$i
        chgrp airforce /home/useraccounts/airforce/airforce$i
done
