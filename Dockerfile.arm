FROM balenalib/rpi-raspbian:buster
RUN [ "cross-build-start" ]

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
	ca-certificates \
	libio-socket-ssl-perl \
	ddclient \
&& rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh

RUN [ "cross-build-end" ]

VOLUME /ddclient

ENTRYPOINT ["entrypoint.sh"]
CMD ["ddclient", "-foreground", "-verbose", "-file", "/ddclient/ddclient.conf"]
