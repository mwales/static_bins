FROM ubuntu

WORKDIR /opt

RUN apt-get update

RUN apt-get install -y build-essential git flex bison texinfo

RUN git clone git://sourceware.org/git/binutils-gdb.git

RUN cd binutils-gdb; git checkout binutils-2_30

RUN cd binutils-gdb; CFLAGS="-Wno-error --static" ./configure

RUN cd binutils-gdb; make all-binutils

RUN cp binutils-gdb/binutils/cxxfilt /opt

