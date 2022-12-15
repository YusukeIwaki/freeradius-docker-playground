FROM alpine:latest

RUN apk add --no-cache \
    bash \
    freeradius \
    freeradius-eap \
    make \
    openssl

COPY --chmod=0755 ./docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD ["/usr/sbin/radiusd", "-X"]
