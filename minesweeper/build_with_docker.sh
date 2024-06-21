#!/bin/bash

docker build -t minesweeper-dev .

ARCH_SELF=`uname -p`
mkdir -p ../bins/$ARCH_SELF

docker run -v ./:/tmp -it minesweeper-dev cp minesweeper /tmp/temp_binary
cp temp_binary minesweeper
rm -f temp_binary
mv minesweeper ../bins/$ARCH_SELF

