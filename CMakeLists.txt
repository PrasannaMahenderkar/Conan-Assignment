
####################################
# DO WRITE CODE BELOW THIS POINT
####################################

cmake_minimum_required(VERSION 3.16)
set(CMAKE_CXX_COMPILER "/usr/bin/g++")
set(CMAKE_C_COMPILER "/usr/bin/gcc")
project(Application)

# Add Conan CMake integration
#include(${CMAKE_BINARY_DIR}/conan.cmake)
include_directories(graph/include clock/include)

# Add subdirectories for shared libraries
add_subdirectory(graph)  # This will add the lib1 subfolder
add_subdirectory(clock)  # This will add the lib2 subfolder

# Add an executable
add_executable(Application main.cpp)

# Setup Conan's environment (includes paths, dependencies)
#conan_basic_setup()

# Link libraries managed by Conan
target_link_libraries(Application ${CONAN_LIBS} graph clock)