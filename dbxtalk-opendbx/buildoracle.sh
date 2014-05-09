#!/bin/bash

export BACKEND="oracle"
ln -s /usr/lib/libpq.so libpq.so
./scripts/dbxtalk-opendbx/build.sh