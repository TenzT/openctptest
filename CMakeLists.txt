cmake_minimum_required(VERSION 3.28)
project(CTPTest)

set(CMAKE_CXX_STANDARD 17)
include_directories(thirdparty/ctp/include)

# -L
if (CMAKE_HOST_APPLE)
    link_directories(thirdparty/ctp/lib/mac_arm64)
elseif(CMAKE_HOST_LINUX)
    link_directories(thirdparty/ctp/lib/lin64)
endif()

add_executable(CTPTest src/main.cpp
        src/md/CMduserHandler.cpp
        src/md/CMduserHandler.h)

target_link_libraries(CTPTest thostmduserapi_se)