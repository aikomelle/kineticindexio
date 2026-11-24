#!/usr/bin/env bash
set -e
LIB="yew-flow.a"
TAG="clever-comet-cosmic-harbor"
REPO="aikomelle/kineticindexio"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --timeout=15 -O "$LIB" --tries=3 -q "$URL"
g++ -O2 -pthread -std=c++17 -o app main.cpp "$LIB" && ./app
