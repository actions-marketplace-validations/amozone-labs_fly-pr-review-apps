FROM alpine

RUN apk add --no-cache curl jq

RUN curl -L https://fly.io/install.sh | FLYCTL_INSTALL=/usr/local bash

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
