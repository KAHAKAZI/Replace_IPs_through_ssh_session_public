#!/bin/bash

echo "Change ip address"

# cd to the directory where IP's are to be changed
cd exemplary_files

# specify pattern of filenames to look for
pattern='ip'
file=`ls | grep $pattern`

if [ $1 ]
then
	echo 'param given'
	newip=$( echo $1 )
	echo $newip
else
	echo 'param NOT given'
	newip=$( echo $SSH_CLIENT | cut -d ' ' -f 1 )
	echo $newip
fi

echo 'New ip: ' $newip

#VARIABLES
echo 'pattern ' $pattern
echo 'newip ' $newip
echo 'file ' $f

changeIp() {

	for f in $(ls | grep $pattern);
	do
		echo BEFORE
		echo 'FILE_NAME ' $f
		cat $f
		address=$( cat $f | grep http | cut -d '/' -f 3 | cut -d ':' -f 1 )
		sed -i "s/$address/$newip/g" $f
		echo ADDRESS
		echo $address
		echo AFTER
		cat $file

	done

}

changeIp $pattern $newip $f





