#!/bin/sh

# Build with emsdk 3.1.10
# Build might fail but static library can be found in dist.

emconfigure ../configure --disable-shared-js --disable-tests --disable-ion --disable-jm --disable-tm --enable-llvm-hacks --disable-methodjit --disable-monoic --disable-polyic --disable-yarr-jit \
            --enable-optimize=-O3 --enable-strip --enable-install-strip  \
            --disable-debug --without-intl-api --disable-threadsafe \
            --disable-gcgenerational --disable-exact-rooting

emmake make
