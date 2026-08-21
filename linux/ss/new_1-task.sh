#!/bin/bash

# -----------------------------------------
# Script Name : system_info.sh
# Description : Prints basic system information
# -----------------------------------------

echo "======================================"
echo "      SYSTEM INFORMATION"
echo "======================================"

echo "Hostname      : $(hostname)"
echo "System Info   : $(uname -a)"
echo "Current Date  : $(date)"

echo "======================================"