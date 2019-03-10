FROM balenalib/rpi:buster

RUN [ "cross-build-start" ]

RUN apt-get update && apt-get install -y --no-install-recommends \
	ddclient \
&& rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh

RUN [ "cross-build-end" ]

VOLUME /ddclient

ENTRYPOINT ["entrypoint.sh"]
CMD ["ddclient", "-foreground", "-file", "/ddclient/ddclient.conf"]
