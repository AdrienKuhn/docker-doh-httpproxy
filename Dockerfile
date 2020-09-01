FROM python:3-alpine

RUN apk update --no-cache && \
    apk upgrade --no-cache && \
    apk add --no-cache build-base bind-tools

RUN pip3 install doh-proxy

COPY entrypoint.sh /

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
