#!/bin/bash
USER_IP=$(echo $SSH_CLIENT | awk '{ print $1}')
MESSAGE="Server login in $(date), user: $(whoami) from $USER_IP"
MAILTO=serhiy_gurin@ukr.net
echo "$DATE  $MESSAGE" | mail -s "Login on $HOSTNAME Server " $MAILTO