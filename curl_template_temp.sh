#!/bin/bash
curl  -v -k \
      -H "Content-Type: application/json" \
      -H "Authorization: 0bc9991dce62ef7990b8555eae6cb6951801f2e77c63d004688522d112ef88ea" \
      -X POST \
      -d @"/home/pi/PublicServer/template_temperture.json" \
    https://gi3-sos.duckdns.org:8443/52n-sos-webapp/service

read