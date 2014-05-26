#!/bin/bash

export BACKEND="mysql"
CPPFLAGS="-I${MYSQL_CONNECTOR_INCLUDE}" LDFLAGS="-L${MYSQL_CONNECTOR_BINARY}" ./scripts/opendbx/build.sh