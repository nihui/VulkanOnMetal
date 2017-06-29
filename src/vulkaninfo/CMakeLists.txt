cmake_minimum_required(VERSION 3.0)

add_definitions("-DVK_USE_PLATFORM_MACOS_MVK")

add_executable(vulkaninfo vulkaninfo.c)
target_link_libraries(vulkaninfo VulkanOnMetal)
