#!/bin/bash
packages=("clang" "clangd" "clang-tidy" "clang-tools" "cppcheck" "flawfinder")
sudo apt install ${packages[*]}
