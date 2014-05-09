#!/bin/sh

export BACKEND="pgsql"
CPPFLAGS="-I/usr/include/postgresql" ./scripts/opendbx/build.sh