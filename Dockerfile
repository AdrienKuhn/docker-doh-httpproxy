FROM python:3-alpine
RUN pip3 install doh-proxy
CMD [ "sh", "-c", "doh-httpproxy --upstream-resolver ${RESOLVER:-127.0.0.1} --port ${PORT:-8080} --listen-address ${LISTEN_ADDRESS:-127.0.0.1} --trusted"]
