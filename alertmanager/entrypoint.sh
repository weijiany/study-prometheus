#!/bin/sh -e

sed -i "s|@.*@|${SLACK_URL}|g" /app/alertmanager.yml

/bin/alertmanager --config.file=/app/alertmanager.yml \
             --storage.path=/alertmanager
