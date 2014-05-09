#!/bin/bash

export BACKEND="sqlite3"
ln -s /usr/lib/lib${BACKEND}.so lib${BACKEND}.so
./scripts/dbxtalk-opendbx/build.sh