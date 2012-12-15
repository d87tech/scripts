#! /bin/bash/
################################
# SVN: Apply Native EOL Style
# by David Yurkiewicz
# WWW.D87STUDIOS.COM
# USAGE: ./SVN_setEOLstyle.sh
# The EOL Style should be set to NATIVE. This is done by the following command:
# svn ps svn:
# This script will set the EOL Style excluding the .svn directory

find . -type f -not -wholename '*.svn*' -exec svn ps svn:eol-style native {} \; 2>>  /tmp/EOL-report.log

cat -e /tmp/EOL-report.log | mail user@company.com


