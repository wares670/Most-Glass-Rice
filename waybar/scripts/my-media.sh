#!/bin/bash

# A loop that listens for playerctl changes instantly
playerctl metadata --follow --format '{"text": "{{artist}} - {{title}}", "class": "{{status}}"}' 2>/dev/null | while read -r line; do
    # If playerctl outputs nothing (no music running), fallback text:
    if [ -z "$line" ]; then
        echo '{"text": "Offline", "class": "stopped"}'
    else
        echo "$line"
    fi
done
