#!/bin/bash

set -e

BIN_NAME=socat
REPO_NAME=socat

docker build -t ${BIN_NAME}-dev .

ARCH_SELF=`uname -p`
mkdir -p ../bins/$ARCH_SELF

docker run -v ./:/tmp -it ${BIN_NAME}-dev cp ${REPO_NAME}/${BIN_NAME} /tmp/temp_binary
cp temp_binary ${BIN_NAME}
rm -f temp_binary
mv ${BIN_NAME} ../bins/$ARCH_SELF

