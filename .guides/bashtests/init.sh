#!/bin/bash

export PS1="\u \w $ "
export PATH="$PATH:$HOME/workspace/.guides/bashtests"
export BASHDIR=$HOME/workspace/.guides
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
chmod +x "${BASHDIR}/bashtests/workspace-reset.sh"

