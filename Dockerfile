ARG SWAKS_VERSION=swaks-20170101.0

FROM alpine:latest

RUN \
    apk add --no-cache \
        perl \
        perl-net-ssleay \
        curl \
        tzdata \
    && curl -SLk http://www.jetmore.org/john/code/swaks/files/swaks-${SWAKS_VERSION}/swaks -o swaks \
    && chmod +x swaks \
    && mv swaks /usr/bin

WORKDIR /root
ENTRYPOINT ["/usr/bin/swaks"]
