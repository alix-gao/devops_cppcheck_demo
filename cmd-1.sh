set -e

sudo apt install cppcheck

cppcheck . --suppress=*:src/main.cpp --suppress=*:other/* --error-exitcode=29

echo "no error"
