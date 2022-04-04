# docker-doh-httpproxy

## Usage

### Docker images

Multi-arch docker images are available on [Docker Hub](https://hub.docker.com/r/krewh/doh-httpproxy):

* The `latest` tag is built from the main branch.  
* The `latest` tag and the last release tag are refreshed nightly to get the latest security updates.

```bash
docker run --rm \
  -p 8080:8080 \
  krewh/doh-httproxy
```

## Environment Variables

| Var            | Description                                                | Default              |
| -------------- | ---------------------------------------------------------- | -------------------- |
| RESOLVER_HOST  | Upstream recursive resolver hostname to send the query to. | Fallback to RESOLVER |
| RESOLVER       | Upstream recursive resolver to send the query to.          | 127.0.0.1            |
| PORT           | Port to listen on.                                         | 8080                 |
| LISTEN_ADDRESS | A list of addresses the proxy should listen on.            | 127.0.0.1            |
| LEVEL          | Log level                                                  | ERROR                |

## Documentation

See https://github.com/facebookexperimental/doh-proxy

## DNS over HTTPS clients

### Linux / MacOS
- [cloudflared-proxy](https://developers.cloudflare.com/1.1.1.1/dns-over-https/cloudflared-proxy/)
- [dnscrypt-proxy 2](https://github.com/jedisct1/dnscrypt-proxy)

### Android
- [Intra](https://play.google.com/store/apps/details?id=app.intra)
