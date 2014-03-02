#/************************************************
#Author:	bigeast
#Time:		12/06/19 Tue 11:33:03 PM
#State:		
#Description:		
#************************************************/
#!/bin/bash
if test $# -lt 2
then
	echo "Usage:	`basename $0` Number#1 Number#2"
	exit 1
fi

a=$1
b=$2
until test $a -eq 0
do
c=$a
a=$(($b%$c))
b=$c
done

echo "gcd($1,$2)=$b"
exit 0
