#!/bin/bash

# Function to display an animated "Hacked by ZerZex" banner
function hacked_by_zerzex() {
  echo -ne "\033[1;32m"
  message="Hacked by ZerZex"
  for (( i=0; i<${#message}; i++ )); do
    echo -n "${message:$i:1}"
    sleep 0.1
  done
  echo -e "\033[0m"
}

# Banner for the tool name
function show_banner() {
  echo -e "\033[1;34m"
  echo "==============================="
  echo "       Dec64 - Base64 Filter     "
  echo "==============================="
  echo -e "\033[0m"
}

# Check if input file is provided
if [ -z "$1" ]; then
  echo -e "\033[1;31mUsage: $0 <input_file>\033[0m"
  exit 1
fi

INPUT_FILE="$1"

# Display the banner
show_banner

# Display success message and print the base64 strings
echo -e "\033[1;32mFiltering Base64 encoded strings...\033[0m"
echo -e "\033[1;33m==============================="
grep -Eo '([A-Za-z0-9+/]{4}){2,}={0,2}' "$INPUT_FILE"
echo -e "===============================\033[0m"

# Trigger the "hacked by ZerZex" animation
powered_by_zerzex
