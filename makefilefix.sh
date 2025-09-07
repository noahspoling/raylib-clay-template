#!/bin/bash
# Usage: ./makefilefix.sh Makefile

if [ -z "$1" ]; then
  echo "Usage: $0 Makefile"
  exit 1
fi

# Replace leading spaces (only at the start of lines) with a tab
sed -i 's/^[ ]\{1,\}/\t/' "$1"
echo "Fixed leading spaces in $1"