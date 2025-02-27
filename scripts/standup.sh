#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title standup
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖

cd ~/dotfiles/automations
./standup.sh | pbcopy

