git clone https://github.com/guillep/OpenDBX.git

rm -rf results
mkdir results
echo "Will install libraries in $WORKSPACE/results"
LDFLAGS="-L/usr/lib" ./configure --prefix="$WORKSPACE/results/" --disable-utils --with-backends="$backend"

make && make install

mv results/lib/opendbx/* results/lib