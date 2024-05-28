set -e

sudo apt install cppcheck

cppcheck . --suppressions-list=cfg.txt

