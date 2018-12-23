# docker-doh-httpproxy

## Usage example

```bash
docker run \
  -p 8080:8080 \
  krewh/doh-httproxy
```

## Environment Variables

| Var            | Description                                       | Default   |
| ---------------| --------------------------------------------------| ----------|
| RESOLVER       | Upstream recursive resolver to send the query to. | 127.0.0.1 |
| PORT           | Port to listen on.                                | 8080      |
| LISTEN_ADDRESS | A list of addresses the proxy should listen on.   | 127.0.0.1 |

## Documentation

See https://github.com/facebookexperimental/doh-proxy

## DNS over HTTPS clients

See https://developers.cloudflare.com/1.1.1.1/dns-over-https/cloudflared-proxy/
