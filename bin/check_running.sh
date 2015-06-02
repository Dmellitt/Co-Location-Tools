#/bin/bash

while true ; do
	yes=`ps -df|grep "ibeacon_scan.sh"|wc -l`
	if [ $yes -eq 1 ]; then
		tdate=`date|tr ' ' '-'`
		bash /home/pi/bin/ibeacon_scan.sh &
		echo "ibeacon_scan is not running. Already started!"
	elif [ $yes -gt 1  ]; then
		echo "ibeacon_scan is running!"
	fi 
	sleep 10
done
