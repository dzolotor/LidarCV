cmake_minimum_required(VERSION 2.8)
project(DisplayVideo)
find_package(OpenCV REQUIRED)
add_executable(DisplayVideo display_video.cpp MSAC.h MSAC.cpp errorNIETO.h errorNIETO.cpp)
target_link_libraries(DisplayVideo ${OpenCV_LIBS})
