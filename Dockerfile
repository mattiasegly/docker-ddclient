ARG ARCH=
ARG SOURCE_BRANCH=
FROM mattiasegly/base-image:${SOURCE_BRANCH}-${ARCH}

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
	libio-socket-ssl-perl \
	ddclient \
&& rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh

VOLUME /ddclient

ENTRYPOINT ["entrypoint.sh"]
CMD ["ddclient", "-foreground", "-verbose", "-file", "/ddclient/ddclient.conf"]
