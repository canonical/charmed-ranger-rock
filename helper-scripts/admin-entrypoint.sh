#!/bin/bash

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export JVMFLAGS=-Dsun.net.spi.nameservice.provider.1=dns,sun

cd /usr/lib/ranger/admin && \
./setup.sh && \
./ews/ranger-admin-services.sh start  && \
ls -la && \
tail -f ./ews/logs/ranger-admin-ranger-*.log
