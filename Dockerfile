FROM alpine:3.2
MAINTAINER Didiet Noor <dnoor@kulina.id> (@lynxluna)

RUN apk update && apk add curl git mercurial bzr go && \
  rm -rf /var/cache/apk/* && mkdir /gopath

ENV GOROOT=/usr/lib/go \
    GOPATH=/gopath \
    GOBIN=/gopath/bin
    
ENV PATH=$PATH:$GOROOT/bin:$GOPATH/bin

