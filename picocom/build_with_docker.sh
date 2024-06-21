#!/bin/bash

docker build -t picocom-dev .

ARCH_SELF=`uname -p`
mkdir -p ../bins/$ARCH_SELF

docker run -v ./:/tmp -it picocom-dev cp picocom/picocom /tmp/temp_binary
cp temp_binary picocom
rm -f temp_binary
mv picocom ../bins/$ARCH_SELF

