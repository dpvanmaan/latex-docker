FROM ubuntu:xenial
MAINTAINER David vanMaanen <david@vanmaaanen.us>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q && apt-get install -qy \
    texlive-full \
    python-pygments gnuplot \
    make git latex2rtf\
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
