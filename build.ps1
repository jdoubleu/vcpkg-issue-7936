# this script runs CMake and aims to build the project
if (Test-Path -Path ".\vcpkg") {
	$ENV:VCPKG_ROOT = ".\vcpkg"
}

cmake --preset default
cmake --build build/ --target ALL_BUILD --parallel
