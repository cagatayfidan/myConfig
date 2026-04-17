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
# Defaults without flags
safe_alias gc  'git checkout'
safe_alias ga  'git add'
safe_alias gst 'git status'
safe_alias gb  'git branch'
safe_alias gp  'git push'

# With flags
safe_alias gcm 'git commit -m'
safe_alias gco 'git checkout -b'
safe_alias gaa 'git add -A'
safe_alias gbd 'git branch -d'
safe_alias gpo 'git push origin'