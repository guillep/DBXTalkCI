#!/bin/bash

export BACKEND="pgsql"
ln -s /usr/lib/libpq.so libpq.so
./scripts/dbxtalk-opendbx/build.sh