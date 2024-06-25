FROM ubuntu

WORKDIR /opt

RUN apt-get update

RUN apt-get install -y build-essential git 

RUN apt-get install -y automake yodl

RUN git clone git://repo.or.cz/socat.git

RUN cd /opt/socat; autoconf

RUN cd /opt/socat; CFLAGS=--static CPPFLAGS=--static ./configure

RUN cd /opt/socat; make -j8

RUN strip /opt/socat/socat



