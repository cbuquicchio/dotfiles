#!/bin/bash

if [ $# -ne 0 ]
then
    session_name=$1
    tmux new-session -s ${session_name} -n main -d
    tmux new-window -n vim -t ${session_name} vim
    tmux new-window -n server/compiler -t ${session_name}
    tmux split-window -t ${session_name}:2

    tmux attach-session -t ${session_name}:0
else
    echo "Please provide a session name"
fi
