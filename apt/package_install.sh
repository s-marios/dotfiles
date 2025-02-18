#!/bin/bash
packages=("clang" "clangd" "clang-tidy" "clang-tools" "cppcheck" "flawfinder" "shellcheck")
sudo apt install ${packages[*]}
