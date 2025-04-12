#! /usr/bin/bash

mkdir build
cd build
cmake -DENABLE_DATE_TESTING=ON -DBUILD_TZ_LIB=ON ../
cmake --build . --target testit -j$(nproc) || true

cat Testing/Temporary/LastTest.log
