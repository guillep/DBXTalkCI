#!/bin/sh

export BACKEND="sqlite3"
CPPFLAGS="-I${SQLITE3_INCLUDE}" LDFLAGS="-L${SQLITE3_LIBRARY}" ./scripts/opendbx/build.sh