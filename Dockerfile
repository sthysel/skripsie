FROM debian:jessie
MAINTAINER sthysel <sthysel@gmail.com>
ENV REFRESHED_AT 2015-08-12

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
  apt-transport-https \
  make \
  texlive-full \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN env --unset=DEBIAN_FRONTEND

RUN groupadd -r dev && useradd -r -g dev dev
USER dev

VOLUME /work
WORKDIR /work

