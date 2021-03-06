FROM alpine:latest

ARG SWAKS_VERSION="20170101.0"

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
CMD ["/usr/bin/swaks"]
