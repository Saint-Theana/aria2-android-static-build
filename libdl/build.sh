#!/usr/bin/sh
/opt/toolchain/bin/clang -c libdl.c
/opt/toolchain/bin/a*-linux-android*-ar srv libdl.a libdl.o
mkdir -p /opt/usr/local/lib
cp libdl.a /opt/usr/local/lib
cp libdl.a /opt/usr/local/lib/libpthread.a
cp libdl.a /opt/usr/local/lib/librt.a