# Base build image
FROM golang:1.10 AS build_base

RUN go get golang.org/x/lint/golint

# This image used for the the go-linter
FROM alpine AS go-linter
RUN apk add ca-certificates
COPY --from=build_base /go/bin/golint /app/main
ENTRYPOINT ["/app/main"]
