#!/bin/bash

# myconfig/aliases.sh

safe_alias() {
  local name="$1"
  local cmd="$2"

  if type "$name" &>/dev/null; then
    echo "⚠ skipping '$name' → already defined as: $(type $name | head -1)"
    return 1
  fi

  alias "$name"="$cmd"
}

# Define your aliases safely
safe_alias gc  'git checkout'
safe_alias gst 'git status'
safe_alias gb  'git branch'
safe_alias gp  'git push'