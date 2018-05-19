HOST="arm-linux-androideabi"
PREFIX="/opt/usr/local"
LOCAL_DIR="/opt/usr/local"


./configure \
    --host=$HOST \
    --prefix=$PREFIX \
    --disable-nls \
    --without-gnutls \
    --with-openssl \
    --without-libxml2 \
    --with-libz --with-libz-prefix=${LOCAL_DIR} \
    --with-libexpat --with-libexpat-prefix=${LOCAL_DIR} \
    --with-sqlite3 --with-sqlite3-prefix=${LOCAL_DIR} \
    --with-libcares --with-libcares-prefix=${LOCAL_DIR} \
     --with-libssh2 --with-libssh2-prefix=${LOCAL_DIR} \
    --with-ca-bundle='/system/etc/ca-certificates.crt' \
    LDFLAGS="-L$LOCAL_DIR/lib" \
    PKG_CONFIG_PATH="$LOCAL_DIR/lib/pkgconfig" \
    ARIA2_STATIC=yes \
    CC=/opt/toolchain/bin/clang \
    CXX=/opt/toolchain/bin/clang++
