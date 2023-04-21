#!/usr/bin/env bash
#
while true; do
	find ~/.static_img/ -type f \( -name '*.jpg' -o -name '*.png' \) -print0 |
		shuf -n1 -z | xargs -0 feh --bg-fill
	sleep 1m
done
