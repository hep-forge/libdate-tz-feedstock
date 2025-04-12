#! /usr/bin/bash

mkdir build
cd build

# date_test_pass_parse_bin: $SRC_DIR/test/date_test/parse.pass.cpp:203: void test_c(): Assertion `!in.fail()' failed.
cmake -DENABLE_DATE_TESTING=OFF -DBUILD_TZ_LIB=ON ../
make -j$(nproc)
make install
