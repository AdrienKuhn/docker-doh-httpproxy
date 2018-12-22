FROM python:3-alpine
RUN pip3 install doh-proxy
ENTRYPOINT ["doh-httpproxy"]
CMD ["--upstream-resolver", "127.0.0.1", "--port", "8080", "--listen-address", "127.0.0.1"]
