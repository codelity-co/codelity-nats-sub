FROM golang:1.13 AS build
RUN apt update
RUN go get github.com/nats-io/go-nats-examples/tools/nats-sub
ENV NATS_URLS nats://localhost:4222
ENV NATS_SUBJECT test
