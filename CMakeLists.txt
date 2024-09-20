cmake_minimum_required(VERSION 3.28)
project(CTPTest)

set(CMAKE_CXX_STANDARD 17)
include_directories(thirdparty/ctp/include)

# -L
link_directories(thirdparty/ctp/lib)

add_executable(CTPTest src/main.cpp
        src/md/CMduserHandler.cpp
        src/md/CMduserHandler.h)

target_link_libraries(CTPTest thostmduserapi_se)