#!/usr/bin/env zsh
# Load .env if present (simple parser)
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
fi

echo "Running today.py with USER_NAME=${USER_NAME:-<unset>}"
python3 today.py
