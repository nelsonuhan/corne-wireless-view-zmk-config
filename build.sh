#!/bin/sh
cd /workspaces/zmk/app
west build -p -d build/left -b "nice_nano_v2" -- -DZMK_CONFIG="/workspaces/zmk-config/config" -DSHIELD="corne_left nice_view_adapter nice_view"
west build -p -d build/right -b "nice_nano_v2" -- -DZMK_CONFIG="/workspaces/zmk-config/config" -DSHIELD="corne_right nice_view_adapter nice_view"
cp build/left/zephyr/zmk.uf2 /workspaces/zmk-config/build/left.uf2
cp build/right/zephyr/zmk.uf2 /workspaces/zmk-config/build/right.uf2
