#!/bin/bash
if [ ! -z $1 ];
then
    curl --insecure -v https://$1 2>&1 | awk 'BEGIN { cert=0 } /^\* Server certificate:/ { cert=1 } /^\*/ { if (cert) print }'
else
    echo "You have to put a complete URL here (e.g domain.tld)"
fi
