cmake_minimum_required(VERSION 3.26)
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
include_directories(thirdparty/yijinjing/include)


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

add_executable(md src/main.cpp
        src/md/CMduserHandler.cpp
        src/md/CMduserHandler.h
        src/yijinjing/locator/MyLocator.cpp
        src/yijinjing/locator/MyLocator.h
        src/yijinjing/journal/MyJournal.cpp
        src/yijinjing/journal/MyJournal.h
        src/entity/Quotes.h
)

target_link_libraries(md thostmduserapi_se yijinjing)

add_executable(master src/master_cmd.cpp
        src/yijinjing/master/MyMaster.cpp
        src/yijinjing/locator/MyLocator.cpp
        src/yijinjing/locator/MyLocator.h
        src/yijinjing/master/MyMaster.h)

target_link_libraries(master yijinjing)