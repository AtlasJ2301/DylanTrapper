#!/bin/bash

if ! [[ -d "./build" ]]; then
  mkdir -p ./build
fi

g++ ./src/main.cpp -o ./build/ash