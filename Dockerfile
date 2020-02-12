FROM alpine:latest
RUN apk update \
    && apk add --no-cache curl jq bash bash-completion bind-tools tcpdump openssl gzip tar ca-certificates sudo \
    && rm -rf /var/cache/apk/*

RUN mkdir -p /user/debugger
RUN chmod 4755 /bin/busybox
RUN adduser debugger -Du 9999 -h /user/debugger -s /bin/bash -G wheel
USER debugger
WORKDIR /user/debugger
CMD ["tail -f /dev/null"]
