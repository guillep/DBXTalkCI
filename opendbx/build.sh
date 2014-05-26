#!/bin/sh

git clone https://github.com/guillep/OpenDBX.git

rm -rf results
mkdir results
echo "Will install libraries in $WORKSPACE/results"
cd OpenDBX

echo $CPPFLAGS
./configure --prefix="$WORKSPACE/results/" --disable-utils --with-backends="$BACKEND"

make && make install