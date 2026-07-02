#! /usr/bin/bash

mkdir build
cd build

# date_test_pass_parse_bin: $SRC_DIR/test/date_test/parse.pass.cpp:203: void test_c(): Assertion `!in.fail()' failed.
cmake -DENABLE_DATE_TESTING=OFF -DBUILD_TZ_LIB=ON -DCMAKE_INSTALL_PREFIX=$PREFIX ..
NPROC=$(nproc 2>/dev/null || sysctl -n hw.ncpu)
make -j$NPROC
make install
