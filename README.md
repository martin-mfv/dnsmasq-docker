# dnsmasq-docker

A lightweight, reusable Docker image for running a `dnsmasq` DNS server.

## Usage

```bash
docker run -d \
  --name dns \
  -p 53:53/udp \
  -v $(pwd)/dnsmasq.conf:/etc/dnsmasq.d/dnsmasq.conf:ro \
  yourname/dnsmasq:latest
```
