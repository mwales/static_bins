#!/bin/bash

# This build file a bit different than most because ltrace ended up in a
# directory with the version name on it, so I had the Dockerfile move it
# out of that directory up to /opt

set -e

BIN_NAME=ltrace

docker build -t ${BIN_NAME}-dev .

ARCH_SELF=`uname -p`
mkdir -p ../bins/$ARCH_SELF

docker run -v ./:/tmp -it ${BIN_NAME}-dev cp /opt/${BIN_NAME} /tmp/temp_binary
cp temp_binary ${BIN_NAME}
rm -f temp_binary
mv ${BIN_NAME} ../bins/$ARCH_SELF

