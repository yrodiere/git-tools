#!/bin/bash
# Source this file from your ~/.bashrc or ~/.zshrc:
#   source /path/to/git-tools/setup.bash

# Get the directory containing this script
GIT_TOOLS_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-${(%):-%x}}")" && pwd)"

# Add to PATH if not already there
if [[ ":$PATH:" != *":$GIT_TOOLS_DIR:"* ]]; then
    export PATH="$GIT_TOOLS_DIR:$PATH"
fi

# Setup completions
if [ -n "$ZSH_VERSION" ]; then
    # Zsh: add completions to fpath
    fpath=("$GIT_TOOLS_DIR/completions" $fpath)
    autoload -Uz compinit
    compinit -C
else
    # Bash: source completion files
    for completion in "$GIT_TOOLS_DIR/completions"/_git-*; do
        if [ -f "$completion" ]; then
            source "$completion"
        fi
    done
fi
