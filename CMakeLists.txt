cmake_minimum_required(VERSION 2.8)

project(hw4)

# Add your CMAKE_C_FLAGS AND CMAKE_CXX_FLAGS here
# Make SURE to use -std=c11 and -std=c++11 where relevant.
# The options specified below are required, but additional options
# may be used.
set(CMAKE_C_FLAGS "-std=c11 -Wall -Wextra -Wshadow -Werror")
set(CMAKE_CXX_FLAGS "-std=c++11 -Wall -Wextra -Wshadow -Werror")


# IF WE HAD HEADER FILES THIS WOULD BE WHAT THAT LOOKED LIKE
# Add our include directory to CMake's search paths.
# include_directories(include)
# Create library from dyn_array so we can use it later.
# add_library(dyn_array include/dyn_array.h src/dyn_array.c)

# Compile the analysis executable.
add_executable(pt0 src/hw4-pt0-thread.c)

# LINK LIBRARY FROM INCLUDE
# link the dyn_array library we compiled against our analysis executable.
# target_link_libraries(analysis dyn_array)


# TESTING
# Compile the the tester executable.
#add_executable(${PROJECT_NAME}_test test/tests.cpp src/process_scheduling.c)
# target_compile_definitions(${PROJECT_NAME}_test PRIVATE)
# Link ${PROJECT_NAME}_test with dyn_array and gtest and pthread libraries
#target_link_libraries(${PROJECT_NAME}_test gtest pthread dyn_array)
