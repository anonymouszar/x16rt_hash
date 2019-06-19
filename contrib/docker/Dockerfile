FROM debian:stretch
LABEL maintainer "Sibby Yose <sibcool@gmail.com>"

USER root
WORKDIR /root

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential gettext libtool autoconf automake \
        mingw-w64 mingw-w64-tools win-iconv-mingw-w64-dev \
        ca-certificates git zip unzip \
    && rm -rf /var/lib/apt/lists/*
