FROM golang:1.7-alpine

RUN apk add --update --no-cache git && \
  rm -rf /tmp/* /var/cache/apk/*

RUN go get -u github.com/kardianos/govendor && \
  rm -rf /go/src/github.com/kardianos
