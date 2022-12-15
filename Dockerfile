FROM debian:latest

RUN apt-get update && apt-get install -y \
    bash \
    freeradius \
    make \
    openssl \
    sudo

COPY --chmod=0755 ./docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD ["/usr/sbin/freeradius", "-X"]
