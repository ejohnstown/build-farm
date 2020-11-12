#!/bin/bash

docker run -it --rm farm:xenial bash -c '\
    git clone --single-branch --depth 1 https://github.com/wolfSSL/wolfssl.git && \
    cd wolfssl && \
    ./autogen.sh && 
    scan-build ./configure --disable-jobserver --enable-opensslextra --disable-memory && 
    scan-build make'
