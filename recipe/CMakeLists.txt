cmake_minimum_required(VERSION 3.15)
project(swig_consumer LANGUAGES C)

find_package(Python3 REQUIRED COMPONENTS Interpreter Development.Module)
find_package(SWIG REQUIRED)
include(UseSWIG)

set(CMAKE_SWIG_OUTDIR "${CMAKE_CURRENT_BINARY_DIR}")
swig_add_library(example LANGUAGE python SOURCES example.i)
target_link_libraries(example PRIVATE Python3::Module)
