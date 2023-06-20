FROM ubuntu:18.04

RUN sed -i s/archive/au.archive/ /etc/apt/sources.list
RUN apt-get update && apt-get -y upgrade
RUN apt-get -y install crossbuild-essential-armhf binutils-arm-none-eabi gcc-arm-none-eabi libnewlib-arm-none-eabi libstdc++-arm-none-eabi-newlib

WORKDIR /data
ENTRYPOINT [ "make" ]
CMD [ "RASPPI=0" ]