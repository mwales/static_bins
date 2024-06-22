FROM ubuntu

WORKDIR /opt

RUN apt-get update

RUN apt-get install -y build-essential git

RUN apt-get install -y zlib1g-dev automake gettext

RUN git clone https://github.com/git/git

RUN cd git; autoconf; ./configure CFLAGS="${CFLAGS} -static"

RUN cd git; make -j

RUN strip git/git

