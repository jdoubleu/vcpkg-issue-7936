# this script runs CMake and aims to build the project
cmake -B build/ -G "Visual Studio 17 2022" -DCMAKE_TOOLCHAIN_FILE="${ENV:VCPKG_ROOT}\scripts\buildsystems\vcpkg.cmake"
cmake --build build/ --target ALL_BUILD --parallel