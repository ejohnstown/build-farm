#!/bin/bash

docker run -it --rm farm:groovy bash -c '\
    git clone --single-branch --depth 1 https://github.com/wolfSSL/wolfssl.git && \
    cd wolfssl && \
    ./autogen.sh && \
    scan-build ./configure --disable-jobserver && \
    scan-build make'
