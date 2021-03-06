FROM alpine:3.10

LABEL maintainer="coco-hkk@github.com"

RUN apk update && \
    apk add bash && \
    apk add tar && \
    apk add zip && \
    apk add unzip && \
    apk add gzip && \
    apk add bzip2 && \
    apk add brotli

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
