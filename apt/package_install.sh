#!/bin/bash
packages=("clang" "clangd" "clang-tidy" "clang-tools" "cppcheck")
sudo apt install ${packages[*]}
