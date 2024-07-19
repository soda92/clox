CONFIG -= QT
CONFIG += terminal

TARGET = clox

HEADERS += common.h compiler.h chunk.h debug.h \
    value.h vm.h scanner.h memory.h

SOURCES += compiler.c main.c memory.c \
    debug.c scanner.c chunk.c value.c vm.c
