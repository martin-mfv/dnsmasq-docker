# Dockerfile
FROM alpine:latest

LABEL maintainer="dunglv1992@gmail.com"
LABEL description="Reusable dnsmasq image for internal DNS servers"

RUN apk add --no-cache dnsmasq && \
    adduser -D -H -s /bin/false dnsmasq

# Create a directory containing the runtime configuration
RUN mkdir -p /etc/dnsmasq.d

COPY dnsmasq.conf /etc/dnsmasq.d/dnsmasq.conf

USER dnsmasq

# Expose DNS ports
EXPOSE 53/udp
EXPOSE 53/tcp

HEALTHCHECK --interval=30s --timeout=5s CMD nc -z -u 127.0.0.1 53 || exit 1

# Dnsmasq runs foreground, loads config from bind directory
CMD ["dnsmasq", "-k", "--conf-dir=/etc/dnsmasq.d"]
