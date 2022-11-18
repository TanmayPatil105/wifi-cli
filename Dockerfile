FROM ubuntu:20.04

RUN apt-get update &&\
    apt-get install -y --no-install-recommends \
            sudo xterm network-manager &&\
    apt-get -y clean &&\
    rm -rf /var/lib/apt/lists/*

RUN adduser --disabled-password --gecos '' admin
RUN adduser admin sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER admin

ADD . /

RUN ./configure
RUN ./install.sh
RUN ./install.sh remove 
