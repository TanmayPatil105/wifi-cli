FROM ubuntu:20.04
RUN apt update
ADD . /
RUN ./configure
RUN ./docker-install.sh
RUN ./docker-install.sh remove 