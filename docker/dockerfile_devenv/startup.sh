#!/bin/bash

# start the noVNC server
bash /app/entrypoint.sh &

rm -rf /tmp/app
mkdir -p /tmp/app
cp /project/electron-app/dist/electron-app-1.0.0.AppImage /tmp/app/
cd /tmp/app
./electron-app-1.0.0.AppImage --appimage-extract-and-run --no-sandbox --touch-events=enabled
