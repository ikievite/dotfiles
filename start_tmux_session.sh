#!/bin/sh

session_name=session

venv=~/.venv/bin

cd ~/git/MiscScripts
tmux new-session -s "$session_name" -n window1 -d
tmux send-keys -t "$session_name" "cd scripts" Enter
tmux send-keys -t "$session_name" "source $venv/activate" Enter
tmux send-keys -t "$session_name" "ipython" Enter

tmux split-window -h -t "$session_name"

tmux split-window -v -t "$session_name"
tmux send-keys -t "$session_name" "top" Enter

tmux select-pane -t 0
tmux split-window -v -t "$session_name"

tmux select-pane -t 0

tmux select-window -t "$session_name:1"
tmux -2 attach-session -t "$session_name"
