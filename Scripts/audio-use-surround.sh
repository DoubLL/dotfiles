#!/bin/bash

if [ $# -eq 0 ]; then
	MUTE_STATE=0 # 0 means unmute
else
	case "$1" in
	on | 1 | true)
		MUTE_STATE=0
		;;
	off | 0 | false)
		MUTE_STATE=1
		;;
	*)
		echo "Error: Invalid parameter '$1'"
		exit 1
		;;
	esac
fi

# Mute/disable HDMI audio outputs
for sink in $(pactl list short sinks | grep -i "hdmi" | awk '{print $2}'); do
	pactl set-sink-mute "$sink" $MUTE_STATE
	if [ $MUTE_STATE -eq 0 ]; then
		echo "Surround - ON"
	else
		echo "Surround - OFF"
	fi
done
