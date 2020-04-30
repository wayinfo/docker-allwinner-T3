FROM ubuntu:14.04
# MAINTAINER Shuo-Yang <sztuxun@gmail.com>

# cn source
COPY ./sources-1404.list /etc/apt/sources.list
COPY ./mkimage /usr/bin/mkimage

ENV DEBIAN_FRONTEND noninteractive
ENV USER root

RUN apt-get update

# install required packages reference android source web
RUN apt-get install -qq -y git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gawk curl wget
RUN apt-get install -qq -y gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip
# sudo apt-get install git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib 
# libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev libgl1-mesa-dev libxml2-utils xsltproc unzip

# install jdk for build android 6
RUN apt-get install -qq -y openjdk-7-jdk

# install required tools for make
RUN apt-get install -qq -y python bc

# install other tools for user
RUN apt-get install -qq -y vim ctags cscope tig busybox

RUN echo "all done."