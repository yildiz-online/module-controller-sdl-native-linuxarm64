cmake_minimum_required (VERSION 2.8.12)
project (retro-bridge-libretro)

set(CMAKE_CXX_FLAGS "-O2 -std=gnu++11")

include_directories("../include/sdl")

add_compile_definitions(HAVE_CDROM OFF)

remove_definitions(-DHAVE_CONFIG_H)
remove_definitions(-DNETWORK_COMPAT_HEADERS)
remove_definitions(-DGEKKO)

file(
        GLOB_RECURSE
        source_files
        ${CMAKE_SOURCE_DIR}/../../c++/*.cpp
        ${CMAKE_SOURCE_DIR}/../../c++/*.c
        ${CMAKE_SOURCE_DIR}/../../c++/*.hpp
        ${CMAKE_SOURCE_DIR}/../../c++/*.h
)

add_library(controller-sdl SHARED ${source_files})

target_link_libraries(controller-sdl ${CMAKE_SOURCE_DIR}/lib/libsdl2.so)
