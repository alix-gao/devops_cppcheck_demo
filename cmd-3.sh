set -e

sudo apt install cppcheck

if [ ! -d build ] ; then
	mkdir build
fi

cd build
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..
cd -

cppcheck . --suppressions-list=cfg.txt --addon=misra --project=./build/compile_commands.json

