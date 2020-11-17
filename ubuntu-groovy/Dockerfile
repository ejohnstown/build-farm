FROM ubuntu:groovy

RUN apt-get update && \
    apt-get install -y \
        git gcc g++ clang clang-tools \
        make autoconf automake libtool \
        valgrind && \
    rm -rf /var/lib/apt/lists/*
