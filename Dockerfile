FROM alpine:3.15

LABEL author Jorge Powers <jorge.capow@gmail.com>

RUN apk fix && \
    apk --update add curl git openssl && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

CMD ["git"]
