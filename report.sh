#!/bin/bash
SUBJECT=$1
MAILTO=$2
touch tf/serverinfo
REPORT=tf/serverinfo
date > $REPORT
df -h >> $REPORT
free -m >> $REPORT
uptime >> $REPORT
tail /var/log/auth.log | grep user >> $REPORT
SI=$(cat $REPORT)
echo "$SI" | mail -s "$1" $2