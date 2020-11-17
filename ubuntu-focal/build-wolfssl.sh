#!/bin/bash

docker run -it --rm farm:focal bash -c '\
    git clone --single-branch --depth 1 https://github.com/wolfSSL/wolfssl.git && \
    cd wolfssl && ./autogen.sh && ./configure --disable-jobserver && make check'
