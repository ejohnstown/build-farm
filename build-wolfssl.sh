#!/bin/bash

if test "x$1" = "x"
then
    echo "usage $0 image_id"
    exit
fi

docker run -it --rm $1 bash -c '\
    git clone --single-branch --depth 1 https://github.com/wolfSSL/wolfssl.git && \
    cd wolfssl && ./autogen.sh && ./configure --disable-jobserver && make check'
