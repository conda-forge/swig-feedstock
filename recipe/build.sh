#!/bin/bash

./configure \
             --prefix="${PREFIX}" \
             --with-pcre-prefix="${PREFIX}" \
             --without-alllang
make -j${CPU_COUNT}
#make check
make install
