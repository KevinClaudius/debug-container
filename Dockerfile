FROM alpine:3.8

RUN apk add --no-cache bash bash-completion

ADD entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]