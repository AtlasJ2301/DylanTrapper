#!/bin/bash

if ! [[ -d "./build/" ]]; then
  mkdir -p ./build/
fi

g++ ./src/main.cpp -o "./build/ash"

nasm -f ELF64 ./cmd/src/echo.s -o ./cmd/src/echo.o
ld ./cmd/src/echo.o -o ./cmd/echo