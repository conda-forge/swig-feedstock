#!/bin/bash
# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./Tools/config

./configure \
             --prefix="${PREFIX}" \
             --with-pcre-prefix="${PREFIX}" \
             --without-alllang
make -j${CPU_COUNT}
make install
