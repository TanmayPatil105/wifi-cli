FROM ubuntu:20.04

RUN apt-get update && apt-get -y install sudo
RUN apt-get install -y xterm network-manager

RUN adduser --disabled-password --gecos '' admin
RUN adduser admin sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER admin

ADD . /

RUN ./configure
RUN ./install.sh
RUN ./install.sh remove 
