#!/bin/bash

./configure \
             --prefix="${PREFIX}" \
             --with-pcre-prefix="${PREFIX}" \
             --with-boost="${PREFIX}" \
             --with-tcl="${PREFIX}" \
             --with-tclconfig="${PREFIX}/lib" \
             --without-perl5 \
             --without-octave \
             --without-scilab \
             --without-java \
             --without-javascript \
             --without-gcj \
             --without-android \
             --without-guile \
             --without-mzscheme \
             --without-ruby \
             --without-php \
             --without-ocaml \
             --without-pike \
             --without-chicken \
             --without-csharp \
             --without-lua \
             --without-allegrocl \
             --without-clisp \
             --without-r \
             --without-go \
             --without-d
make -j${CPU_COUNT}
#make check
make install
