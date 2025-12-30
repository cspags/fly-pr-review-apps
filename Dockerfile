FROM elixir:1.18.4-alpine

RUN apk add --no-cache curl jq git build-base

RUN curl -L https://fly.io/install.sh | FLYCTL_INSTALL=/usr/local sh

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
