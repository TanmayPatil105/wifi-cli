FROM ubuntu:20.04
RUN apt update
ADD . /
RUN apt-get update
RUN apt-get install -y xterm network-manager
RUN ./configure
RUN ./docker-install.sh
RUN ./docker-install.sh remove 