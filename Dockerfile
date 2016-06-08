FROM golang:1.6-alpine

MAINTAINER brendan_anderson@hcpss.org

LABEL vendor=Howard\ County\ Public\ Schools \
  org.hcpss.version="0.1.0" \
  org.hcpss.name="gogocal"

RUN set -ex \
  && apk add --no-cache --virtual .build-deps git \
  && go get github.com/HCPSS/gogocal \
  && apk del .build-deps

CMD ["gogocal", "-k", "/root/key.json"]
