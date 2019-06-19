#!/bin/bash

BUILD_DIR=/root/x16rt_hash
SRC_DIR=$BUILD_DIR/x16rt_hash

# win32
cd $SRC_DIR
source contrib/travis/version_env.sh

git clean -fd

autoreconf -fi

./configure --host=i686-w64-mingw32 --prefix=/usr/local/win32
make

BUILD32=$BUILD_DIR/win32
mkdir -p $BUILD32/x16rt_hash
cp $SRC_DIR/.libs/libx16rthash-0.dll $BUILD32/x16rt_hash
cd $BUILD32
zip -r $BUILD_DIR/x16rt_hash-$X16RTHASH_VERSION-win32.zip x16rt_hash

# win64
cd $SRC_DIR

git clean -fd

autoreconf -fi

./configure --host=x86_64-w64-mingw32 --prefix=/usr/local/win64
make

BUILD64=$BUILD_DIR/win64
mkdir -p $BUILD64/x16rt_hash
cp $SRC_DIR/.libs/libx16rthash-0.dll $BUILD64/x16rt_hash
cd $BUILD64
zip -r $BUILD_DIR/x16rt_hash-$X16RTHASH_VERSION-win64.zip x16rt_hash
