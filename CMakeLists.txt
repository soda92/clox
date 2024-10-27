cmake_minimum_required(VERSION 3.11)
project(clox)


FILE(GLOB MY_SRCS *.h *.c)

add_executable(clox ${MY_SRCS})
