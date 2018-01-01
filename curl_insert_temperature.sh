#!/bin/bash
curl  -v -k \
     -H "Content-Type: application/json;charset=UTF-8" \
     -H "Authorization: 0bc9991dce62ef7990b8555eae6cb6951801f2e77c63d004688522d112ef88ea" \
     -X POST \
     -d "$(/home/pi/PublicServer/insertResultTimestamp.sh "InsertResult_Temperature_Template_group10" $(python /home/pi/PublicServer/insert_temperature.py))" \
    https://gi3-sos.duckdns.org:8443/52n-sos-webapp/service/ >> /home/pi/request.log 2>&1
read