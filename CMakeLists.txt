cmake_minimum_required(VERSION 3.22)
project(clox)

FILE(GLOB SOURCES src/*.h src/*.c)

set(TARGET clox)

add_executable(${TARGET} ${SOURCES})
