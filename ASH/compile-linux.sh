#!/bin/bash

if g++ ./src/main.cpp -o ./build/ash; then
  if ! [[ -d "./build" ]]; then
    mkdir -p ./build
  fi
fi