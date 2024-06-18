#!/bin/bash

docker build -t picocom-dev .

ARCH_SELF=`uname -p`
mkdir -p ../bins/$ARCH_SELF

docker run -v ./:/tmp -it picocom-dev cp picocom/picocom /tmp
mv picocom ../bins/$ARCH_SELF

