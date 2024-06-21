FROM ubuntu

WORKDIR /opt

RUN apt-get update

RUN apt-get install -y build-essential git clang

RUN git clone https://github.com/odin-lang/Odin

RUN cd Odin; ./build_odin.sh

RUN git clone https://github.com/gaultier/minesweeper-from-scratch

RUN cd minesweeper-from-scratch; /opt/Odin/odin build src -o:speed

RUN mv /opt/minesweeper-from-scratch/src.bin /opt/minesweeper

