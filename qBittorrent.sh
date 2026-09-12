#!/bin/bash
export DISPLAY=:0.0

RGS_DEPS="/userdata/system/pro/.dep"
if [ -d "$RGS_DEPS" ]; then
    export LD_LIBRARY_PATH="$RGS_DEPS${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
fi

QBIT="/userdata/system/add-ons/qbittorrent/qbittorrent.AppImage"

if [ ! -x "$QBIT" ]; then
    yad --error --title="qBittorrent" --text="qBittorrent was not found." --width=350 --center
    exit 1
fi

exec "$QBIT"
