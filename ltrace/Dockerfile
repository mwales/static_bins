FROM ubuntu

WORKDIR /opt

RUN cd /etc/apt/sources.list.d; sed -i -e "s/deb/deb deb-src/g" ubuntu.sources

RUN apt-get update

RUN apt-get install -y build-essential git dpkg-dev libelf-dev

RUN apt-get source ltrace

# This line may break in the future.  The ltrace directory had the version number
# in it, so I used this shell expansion when changing directory to avoid
# referencing the version number directly, and then copy the binary to /opt when
# compilation is completed

RUN cd /opt/ltrace-*; CFLAGS=--static CPPFLAGS=--static LDFLAGS=--static LIBS="-lzstd -lz" ./configure

RUN cd /opt/ltrace-*; make -j

RUN cp /opt/ltrace-*/ltrace /opt

