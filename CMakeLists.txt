cmake_minimum_required(VERSION 3.28)
project(CTPTest)

set(CMAKE_CXX_STANDARD 17)

include_directories(thirdparty/ctp/include)

#spdlog
include_directories(thirdparty/spdlog-1.3.1/include)

# rxcpp
include_directories(thirdparty/rxcpp-4.1.0/include)

# nanomsg
include_directories(thirdparty/nanomsg-1.1.5/include)

# json
include_directories(thirdparty/json-3.5.0/single_include)

# hffix
include_directories(thirdparty/hffix-b67d404f/include)

# yijinjing
add_subdirectory(thirdparty/yijinjing)
# fmt
add_subdirectory(thirdparty/fmt-5.3.0)
# nanomsg
add_subdirectory(thirdparty/nanomsg-1.1.5)
# sqlite
add_subdirectory(thirdparty/SQLiteCpp-2.3.0)

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