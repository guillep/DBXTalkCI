#!/bin/sh

git clone https://github.com/guillep/OpenDBX.git

export WORKSPACE=`pwd`

rm -rf results
mkdir results
echo "Will install libraries in $WORKSPACE/results"
cd OpenDBX

echo "CPPFLAGS:" $CPPFLAGS
echo "LDFLAGS:" $LDFLAGS
./configure --prefix="$WORKSPACE/results/" --disable-utils --with-backends="$BACKEND"

make && make install