#!/bin/bash

(( $# <= 0 )) && exit 1

key=d-p8TZQ5Oa2NPGVquDLFms
event=$1
data='{"value1":"'$2'"}'
url=https://maker.ifttt.com/trigger/${event}/with/key/${key}
#echo $url
#exit

curl \
  --request POST \
  --header 'Content-Type: application/json' \
  --data $data \
  $url
echo ''