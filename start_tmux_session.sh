#!/bin/sh

session_name=session

tmux new-session -s "$session_name" -n window1 -d
tmux send-keys -t "$session_name" "ipython" Enter

tmux split-window -h -t "$session_name"

tmux split-window -v -t "$session_name"
tmux send-keys -t "$session_name" "top" Enter

tmux select-pane -t 0
tmux split-window -v -t "$session_name"

tmux select-pane -t 0

tmux -2 attach-session -t "$session_name"

