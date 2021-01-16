#!/bin/bash

docker build -t pop-os-gtk-theme-builder:latest .

mkdir ./output
rm -rf ./output/*
docker run --rm --mount src="$(pwd)/output",target=/usr/share/themes,type=bind pop-os-gtk-theme-builder

docker rmi pop-os-gtk-theme-builder:latest

