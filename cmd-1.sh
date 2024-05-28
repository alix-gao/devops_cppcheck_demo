set -e

sudo apt install cppcheck

cppcheck . --suppress=*:src/main.cpp --suppress=*:other/*

