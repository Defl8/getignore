#!/usr/bin/env bash

get_gitignore(){
    # Make sure that at least one arg was passed
    if [[  $# -ne 1 ]]; then
        echo "ERROR: URL to raw gitignore data must be passed"
        return 1
    fi

    local endpt="$1"
    local resp

    # Downloads the file contents and names it .gitignore
    # Must be raw URL for the gitignore
    if ! resp=$(curl -L -o ".gitignore" $endpt); then
        echo "Error: Failed to get gitignore." >&2 # Pushes to stderr
        return 1
    fi
    echo "$resp"
}


get_gitignore
ret_code="$?"

# If we couldn't get the data, exit
if [[ ret_code -eq 1 ]]; then
    exit 1
fi
