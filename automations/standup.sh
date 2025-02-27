#!/bin/bash

# ClickUp API Config
CLICKUP_API_KEY="pk_75442014_27E86CTLVGLGP56488DBBMXJCHJF7787"
LIST_ID="901109424208"

# Get yesterday's and today's day of the week
YESTERDAY=$(date -v -1d +"%A")
TODAY=$(date +"%A")

# Path to git dir
GIT_DIR="/Users/saahilkhemnani/projects/popl-mobile-app"

# Get unique ClickUp task IDs from Git commit messages
TASK_IDS=$(git --git-dir="$GIT_DIR/.git" --work-tree="$GIT_DIR" log --all --author="Saahil Khemnani" --since="yesterday" --until="today" --pretty=format:"%d" |
    grep -oE 'CU-[a-zA-Z0-9]+' | cut -d'-' -f2 | sort -u | jq -R -s -c 'split("\n")[:-1]')

# Fetch all tasks from ClickUp API
TASKS_JSON=$(curl -s -H "Authorization: $CLICKUP_API_KEY" "https://api.clickup.com/api/v2/list/$LIST_ID/task?assignees[]=75442014")

# Extract yesterday's tasks
YESTERDAY_TASKS=$(echo "$TASKS_JSON" | jq -r --argjson ids "$TASK_IDS" '
  .tasks[] | select([.id] | inside($ids)) | .name')

# Extract tasks with status "working on"
TODAY_TASKS=$(echo "$TASKS_JSON" | jq -r '
  .tasks[] | select(.status.status == "working on") | .name')

# If no "working on" tasks are found, add filler items
if [ ${#TODAY_TASKS[@]} -eq 0 ]; then
  TODAY_TASKS=("• PR Review" "• Bug Fixes")
fi

# Print formatted output
echo "$YESTERDAY"
echo "$YESTERDAY_TASKS" | sed 's/^/• /'

echo ""
echo "$TODAY"
echo "$TODAY_TASKS" | sed 's/^/• /'
