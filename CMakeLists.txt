cmake_minimum_required(VERSION 3.22)
project(vcpkg_issue_7936)

set(CMAKE_CXX_STANDARD 20)

set(Protobuf_USE_STATIC_LIBS ON)
find_package(Protobuf REQUIRED)


protobuf_generate_cpp(addressbook_SRCS addressbook_HDRS
        addressbook.proto)

add_executable(${PROJECT_NAME}
        ${addressbook_SRCS}
        ${addressbook_HDRS}
        main.cpp)
target_include_directories(${PROJECT_NAME} PRIVATE
        ${CMAKE_CURRENT_BINARY_DIR})
target_link_libraries(${PROJECT_NAME} PRIVATE
        protobuf::libprotobuf)
target_compile_options(${PROJECT_NAME} PRIVATE
        $<$<CXX_COMPILER_ID:MSVC>:/W4 /WX>
        $<$<NOT:$<CXX_COMPILER_ID:MSVC>>:-Wall -Wextra -Wpedantic -Werror>)
