#!/bin/bash

export BACKEND="mysql"
ln -s /usr/lib/lib${BACKEND}client.so lib${BACKEND}client.so
./scripts/dbxtalk-opendbx/build.sh