FROM ubuntu:focal

RUN apt-get update && \
    DEBIAN_FRONTEND="noninteractive" apt-get install -y \
        git gcc g++ clang clang-tools \
        make autoconf automake libtool \
        valgrind && \
    rm -rf /var/lib/apt/lists/*
