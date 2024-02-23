#!/bin/bash

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

cd /usr/lib/ranger/usersync && \
./setup.sh && \
ranger-usersync-services.sh start  && \
ls -la && \
tail -f ./ranger-*-usersync/logs/usersync-ranger-k8s-0-.log
