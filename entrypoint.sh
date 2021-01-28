#!/bin/sh

if [[ -z "${RESOLVER_HOST}" ]]; then
  RESOLVER=${RESOLVER:-127.0.0.1}
else
  RESOLVER=`dig +short ${RESOLVER_HOST} | tail -n1`
fi

echo "Resolver set to: $RESOLVER"

doh-httpproxy \
  --upstream-resolver ${RESOLVER} \
  --port ${PORT:-8080} \
  --listen-address ${LISTEN_ADDRESS:-127.0.0.1} \
  --trusted --level ${LEVEL:-ERROR}
