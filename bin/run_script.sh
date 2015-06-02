#/bin/bash

tdate=`date|tr ' ' '-'`

#./ibeacon_scan.sh > "/home/pi/data/$tdate-ibeaconscan.csv" &
./check_running.sh & 

