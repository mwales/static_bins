FROM ubuntu

WORKDIR /opt

RUN apt-get update

RUN apt-get install -y build-essential git 

RUN apt-get install -y automake pkg-config libevent-dev bison libncurses-dev

RUN git clone https://github.com/tmux/tmux.git

RUN cd /opt/tmux; ./autogen.sh

RUN cd /opt/tmux; ./configure --enable-static

RUN cd /opt/tmux; make -j8

RUN strip /opt/tmux/tmux



