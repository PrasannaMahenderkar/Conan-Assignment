
###################################
# DO WRITE CODE BELOW THIS POINT
####################################
# graph cmake
cmake_minimum_required(VERSION 3.16)
# Set the graph library name
project(graph VERSION 1.0)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add the include directory to the project's include paths
include_directories(${PROJECT_SOURCE_DIR}/include)

# Add the source files to the library
add_library(graph SHARED
    src/graph.cpp
)

# Optionally, specify the header files for installation
install(DIRECTORY include/ DESTINATION include)

# Specify that the library should be installed
install(TARGETS graph DESTINATION lib)