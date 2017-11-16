FROM ubuntu:16.04

RUN apt-get -y update && apt-get upgrade -y

# Configure timezone and locale
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y locales

RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=en_US.UTF-8

ENV LANG en_US.UTF-8 


RUN apt-get install subversion libcurl4-openssl-dev uuid-dev autoconf texinfo libssl-dev \
     libtool iasl diffstat gawk chrpath connect-proxy autopoint p7zip-full \
     build-essential gcc-multilib vim-common gawk wget git-core python3 python \
     cpio iputils-ping unzip -y



