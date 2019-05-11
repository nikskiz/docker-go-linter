# Base build image
FROM golang:1.11-alpine AS build_base

# Install some dependencies needed to build the project
RUN apk add bash ca-certificates git gcc g++ libc-dev
WORKDIR /go/src/golang.org/x/lint/golint

# This image gets the go linter
FROM build_base AS service_builder
RUN go get golang.org/x/lint/golint

# This image used for the the go-linter
FROM alpine AS go-linter
WORKDIR /app
RUN apk add ca-certificates
COPY --from=service_builder /go/bin/golint /app/main
CMD ["/app/main"]
