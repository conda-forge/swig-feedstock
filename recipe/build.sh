#!/bin/bash

./configure \
             --prefix="${PREFIX}" \
             --with-pcre-prefix="${PREFIX}" \
             --with-boost="${PREFIX}" \
             --without-alllang
make -j${CPU_COUNT}
#make check
make install
