cmake_minimum_required(VERSION 2.8.11)
project(ds)

set(CMAKE_CXX_STANDARD 11)

include_directories(vendor/gtest/include vendor/gmock/include)
link_directories(vendor/gtest/lib vendor/gmock/lib)

set(LIBS gtest pthread)

set(SRC main.cpp)

add_executable(main ${SRC})

target_link_libraries(main ${LIBS})
