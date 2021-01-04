#!/bin/sh
#
# Remove Old File
#
rm chkpwr.txt
#
# Run the check. Dump to screen
#
enm chkpwrCall
#
# get the file from that was created during the run.
#
enm chkpwrGet
#
# Send The file
#
y2ui.sh ~/chkpwr.txt >~/.y2ui.txt
#cat ~/.y2ui.txt
#
# base64 encode the url
#
wUrl='\"'$(cat ~/.y2ui.txt|base64)'\"'
#echo $wUrl
#
# Call IFTTT Event
#
echo ''
ifttt.sh lteRpt1 $wUrl
#
#
#