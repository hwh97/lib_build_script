#!/bin/bash
# NDK路径
export NDK_HOME=/Users/weihong/Library/Android/sdk/ndk/android-ndk-r17c

export MAKE_PATH=build/make-cache

export TARGET_ABI=$ABI

create_makefile() {
    cmake \
        -DANDROID_ABI=$TARGET_ABI \
        -DANDROID_PLATFORM=android-21 \
        -DCMAKE_BUILD_TYPE=release \
        -DANDROID_NDK=$NDK_HOME \
        -DCMAKE_TOOLCHAIN_FILE=$NDK_HOME/build/cmake/android.toolchain.cmake \
        -DANDROID_TOOLCHAIN=clang -B $MAKE_PATH -S .
}

create_makefile

cd $MAKE_PATH

make clean
make
