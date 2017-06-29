cmake_minimum_required(VERSION 3.0)

add_definitions("-Wall -Wextra -Werror")
add_definitions("/DVK_USE_PLATFORM_MACOS_MVK")

include_directories(../include)

file(GLOB HEADERS *.h)
file(GLOB SOURCES *.cpp)

add_library(VulkanOnMetal STATIC ${HEADERS} ${SOURCES})
