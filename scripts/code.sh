#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title code
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "Placeholder" }

# Documentation:
# @raycast.description Opens with VSCode

# echo "Hello World! Argument1 value: "$1""
cd ~/projects && code "$1"

