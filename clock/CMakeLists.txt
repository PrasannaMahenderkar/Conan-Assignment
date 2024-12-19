
###################################
# DO WRITE CODE BELOW THIS POINT
####################################

cmake_minimum_required(VERSION 3.16)
# Set the clock library name
project(clock VERSION 1.0)

# Specify the C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Add the include directory to the project's include paths
include_directories(${PROJECT_SOURCE_DIR}/include)

# Add the source files to the library
add_library(clock STATIC
    src/clock.cpp
)
#add_library(clock SHARED #as static lib with same name as .so cannot be created again. either of them can be created or need to use different name
 #   src/clock.cpp 
#)

target_link_libraries(clock PUBLIC graph)
# Optionally, specify the header files for installation
install(DIRECTORY include/ DESTINATION include)

# Specify that the library should be installed
install(TARGETS clock DESTINATION lib)