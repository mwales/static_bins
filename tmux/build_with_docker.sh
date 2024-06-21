#!/bin/bash

docker build -t tmux-dev .

ARCH_SELF=`uname -p`
mkdir -p ../bins/$ARCH_SELF

docker run -v ./:/tmp -it tmux-dev cp tmux/tmux /tmp/temp_binary
cp temp_binary tmux
rm -f temp_binary
mv tmux ../bins/$ARCH_SELF

