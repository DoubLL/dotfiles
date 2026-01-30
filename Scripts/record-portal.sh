#!/bin/sh -e

killall -SIGINT gpu-screen-recorder && sleep 0.5 && notify-send -u low 'GPU Screen Recorder' 'Stopped recording' && exit 0;

active_sink=default_output
mkdir -p "$HOME/Videos/Recordings/"
video="$HOME/Videos/Recordings/$(date +"%Y-%m-%d_%H-%M-%S.mp4")"
notify-send -t 1500 -u low 'Window recording' "Started recording to $video"
gpu-screen-recorder -w portal -c mp4 -f 60 -a "$active_sink" -o "$video"