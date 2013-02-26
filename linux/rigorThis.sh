#!/bin/bash
#################################
# RigorThis
# by David Yurkiewicz
# WWW.D87STUDIOS.COM
## Check Site for HTTP error codes
# USAGE: ./rigorThis.sh google.com
##################################


SITE=$1

test=$(curl -I "$SITE" 2>|/dev/null | grep HTTP/1.1) && echo -e "\n`date` ${test}" | grep 200

if [ $? -ne 0 ] ; then
	curl -iD /tmp/HTTP-checks/`date +"%F_%H:%M"`-HTTPhead.log $SITE
else 
  echo "No issue to report"
fi

