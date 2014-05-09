git clone https://github.com/guillep/OpenDBX.git

rm -rf results
mkdir results
echo "Will install libraries in $WORKSPACE/results"
cd OpenDBX

echo ${CPPFLAGS}
CPPFLAGS="${CPPFLAGS}" LDFLAGS="-L/usr/lib" ./configure --prefix="$WORKSPACE/results/" --disable-utils --with-backends="$backend"

make && make install

cd ..
mv results/lib/opendbx/* results/lib