cmake_minimum_required(VERSION 3.0)

add_definitions("-Wall -Wextra -Werror -Wno-unused-parameter -Wno-unused-value")
add_definitions("/DVK_USE_PLATFORM_MACOS_MVK")

include_directories(../include)

file(GLOB HEADERS *.h)
file(GLOB SOURCES *.mm)

add_library(VulkanOnMetal SHARED ${HEADERS} ${SOURCES})
set_property(TARGET VulkanOnMetal PROPERTY CXX_STANDARD 14)
target_link_libraries(VulkanOnMetal objc "-framework Metal")

add_executable(vulkaninfo vulkaninfo.c)
target_link_libraries(vulkaninfo VulkanOnMetal)
