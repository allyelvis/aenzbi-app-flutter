cmake_minimum_required(VERSION 3.10)

project(aenzbi_app_flutter LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 14)

# Include the Flutter library
include(${FLUTTER_ROOT}/scripts/cmake/Flutter.cmake)

# Create executable target
add_executable(aenzbi_app_flutter "flutter/generated_plugin_registrant.cc" "main.cc")
target_link_libraries(aenzbi_app_flutter flutter)
