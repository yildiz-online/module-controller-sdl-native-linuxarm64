#!/usr/bin/env bash

TARGET_PATH="../../../../target/classes"
TARGET_LINUXARM64="$TARGET_PATH/linuxarm64"

cmake . \
-DCMAKE_BUILD_TYPE=Release \
-DLIBRARY_OUTPUT_PATH=${TARGET_LINUXARM64} \


make
r1=$?

cp lib/libsdl2.so ${TARGET_LINUXARM64}/libsdl2.so

exit ${r1}
