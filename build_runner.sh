#!/usr/bin/env bash
set -e
REPO="vaviknal/metalasteroidio"
TAG="bright-harbor-bright-forest"
LIB="vanilla-layer.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --timeout=15 -O "$LIB" --tries=3 -q "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
