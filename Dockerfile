FROM python:3-alpine

RUN apk update --no-cache && \
    apk upgrade --no-cache && \
    apk add --no-cache build-base

RUN pip3 install doh-proxy

CMD [ "sh", "-c", "doh-httpproxy --upstream-resolver ${RESOLVER:-127.0.0.1} --port ${PORT:-8080} --listen-address ${LISTEN_ADDRESS:-127.0.0.1} --trusted --level ${LEVEL:-ERROR}"]
