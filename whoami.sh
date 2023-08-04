#!/bin/bash
who=$(whoami)
if [ "$who" != "root" ]; then
    echo "You are not root, $who exiting.."
    exit 1
else
    echo "welcome! $who"
fi

ps -ef | head -3
