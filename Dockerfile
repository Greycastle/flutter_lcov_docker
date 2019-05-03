FROM ubuntu:latest

MAINTAINER david@greycastle.se

WORKDIR /

RUN apt-get update && \
    apt-get install -y lcov git-core curl unzip libglu1-mesa

RUN git clone https://github.com/flutter/flutter.git && \
    /flutter/bin/flutter channel master && \
    /flutter/bin/flutter upgrade && \
    /flutter/bin/flutter doctor

RUN apt-get remove -y curl unzip && \
    apt autoremove -y && \
    rm -rf /var/lib/apt/lists/*

ENV PATH $PATH:/flutter/bin/cache/dart-sdk/bin:/flutter/bin
