#!/bin/bash
# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./Tools/config

./configure \
             --prefix="${PREFIX}" \
             --with-pcre2-prefix="${PREFIX}" \
             --without-alllang
make -j${CPU_COUNT}
make install

# cmake prefers the versioned symlink:
# https://github.com/Kitware/CMake/blob/v3.28.1/Modules/FindSWIG.cmake#L89
ln -sf ${PREFIX}/bin/swig ${PREFIX}/bin/swig4.0
