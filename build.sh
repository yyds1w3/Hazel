#!/usr/bin/zsh

# 编译Hazel库
cd build || exit
cmake .. && make
cd ..
