#!/bin/sh

export BACKEND="pgsql"
CPPFLAGS="-I${PGSQL_INCLUDE}" LDFLAGS="-L${PGSQL_LIBRARY}" ./scripts/opendbx/build.sh