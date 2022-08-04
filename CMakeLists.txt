cmake_minimum_required(VERSION 3.22)
project(vcpkg_issue_7936)

set(CMAKE_CXX_STANDARD 20)

set(Protobuf_USE_STATIC_LIBS ON)
find_package(Protobuf REQUIRED)

add_executable(vcpkg_issue_7936 main.cpp)
