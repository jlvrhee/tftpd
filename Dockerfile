FROM alpine:latest
MAINTAINER Jeroen van Rhee <jeroen_van_rhee@hotmail.com>

RUN apk  add --no-cache tftp-hpa && mkdir -p /srv/tftproot && rm -rf /var/cache/apk/*

EXPOSE 69/udp

CMD ["/usr/sbin/in.tftpd", "-L", "-s", "/srv/tftproot"]
