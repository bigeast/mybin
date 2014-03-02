#/************************************************
#Author:		bigeast
#Time:		12/07/11 Wed 12:24:58 AM
#State:		correct
#Description:	Change cursor position
#************************************************/
#!/bin/bash
echo -n Count:
tput sc

count=0
while :
do
	if [[ $count -lt 10 ]]
	then let count++
		sleep 1
		tput rc
		tput ed
		echo -n $count
	else exit 0
	fi
done
