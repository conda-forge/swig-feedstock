#!/bin/bash

# Full paths break make check
export CC=$(basename ${CC})
export CXX=$(basename ${CXX})

"${SRC_DIR}"/configure \
             --prefix="${PREFIX}" \
             --host="${HOST}" \
             --with-pcre-prefix="${PREFIX}" \
             --without-alllang

make -j${CPU_COUNT} ${VERBOSE_AT}
make check
make install
