# Dockerfile
FROM alpine:latest

LABEL maintainer="dunglv1992@gmail.com"
LABEL description="Reusable dnsmasq image for internal DNS servers"

RUN apk add --no-cache dnsmasq

# Create a directory containing the runtime configuration
RUN mkdir -p /etc/dnsmasq.d

# Expose DNS ports
EXPOSE 53/udp
EXPOSE 53/tcp

# Dnsmasq runs foreground, loads config from bind directory
CMD ["dnsmasq", "-k", "--conf-dir=/etc/dnsmasq.d"]
