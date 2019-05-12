# docker go-linter

Docker go-linter is a docker image based on golang.org/x/lint/golint. The binary is built in the Dockerfile and pushed to the docker repo nikskiz/go-linter.

## Build Locally

```bash
docker build .
```

## Usage

`docker run --rm -it -v <GO PROJECT>:/usr/local/go/src/ nikskiz/go-linter:latest <GO FILE TO LINTER>

```bash
docker run --rm -it -v $GO_PROJECT:/usr/local/go/src/  $DOCKER_LINTER_REPO cmd/*
```