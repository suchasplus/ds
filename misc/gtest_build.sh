#!/bin/bash
set -x
set -e

BASE_PATH=`pwd`
[ -d "vendor" ] && rm -rf vendor
[ -d "build" ] && rm -rf build
mkdir build && cd build && cmake -G "Unix Makefiles" ..
make

cd $BASE_PATH
mkdir -p vendor/gtest/lib
mkdir -p vendor/gmock/lib
cp build/googlemock/libgmoc*.a vendor/gmock/lib
cp build/googlemock/gtest/libgtes*.a vendor/gtest/lib
cp -r googletest/include/ vendor/gtest/
cp -r googlemock/include/ vendor/gmock/


cd $BASE_PATH
rm -rf build
