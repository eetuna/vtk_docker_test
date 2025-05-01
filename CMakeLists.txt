cmake_minimum_required(VERSION 3.10)
project(VTKExample)

find_package(VTK REQUIRED)
include(${VTK_USE_FILE})

add_executable(main main.cpp)
target_link_libraries(main PRIVATE ${VTK_LIBRARIES})
