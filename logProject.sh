#!/bin/bash
############################################################################################
#
# The script saves the log files and then zeros it out by concatenating /dev/null to it
#	
############################################################################################

auth='/var/log/auth.log'
sys='/var/log/syslog'
dmesg='/var/log/dmesg'
year=`date +"%Y"`
month=`date +"%m"`
authdate='date +auth_%F.log'

logDir=/home/osboxes/logProject/logs/$year/$month

if [ -d $logDir ]
then
	echo "yep" > /tmp/out.txt
else
	echo "nope" > /tmp/out.txt
	mkdir $logDir
fi
cp $auth $logDir
cd $logDir
mv auth.log $(date +auth_%F.log)
cp $sys $logDir
cd $logDir
mv syslog $(date +sys_%F.log)
cp $dmesg $logDir
cd $logDir
mv dmesg $(date +dmesg_%F)

cat /dev/null > /var/log/auth.log
cat /dev/null > /var/log/syslog
cat /dev/null > /var/log/dmesg
