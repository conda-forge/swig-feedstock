#!/bin/bash

# Get an updated config.sub and config.guess
cp -r ${BUILD_PREFIX}/share/libtool/build-aux/config.* ./Tools/config

# Full paths break make check
export CC=$(basename ${CC})
export CXX=$(basename ${CXX})

"${SRC_DIR}"/configure \
--prefix="${PREFIX}" \
--host="${HOST}" \
--with-pcre2-prefix="${PREFIX}" \
--without-alllang

make -j${CPU_COUNT} ${VERBOSE_AT}
#make check
make install
