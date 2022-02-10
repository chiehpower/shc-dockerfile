FROM ubuntu:20.04

MAINTAINER Chieh

RUN apt update && apt install -y wget vim git ca-certificates build-essential

RUN wget https://github.com/neurobin/shc/archive/refs/tags/4.0.3.tar.gz \
    && tar -xzvf 4.0.3.tar.gz \
    && cd shc-4.0.3 \
    && ./configure \
    && make \
    && make install 



