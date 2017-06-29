cmake_minimum_required(VERSION 3.0)

add_definitions("-std=c++14 -Wall -Wextra -Werror -Wno-unused-parameter -Wno-unused-value")
add_definitions("/DVK_USE_PLATFORM_MACOS_MVK")

include_directories(../include)

file(GLOB HEADERS *.h)
file(GLOB SOURCES *.mm)

add_library(VulkanOnMetal SHARED ${HEADERS} ${SOURCES})
