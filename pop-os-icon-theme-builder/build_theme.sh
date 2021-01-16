#!/bin/bash

docker build -t pop-os-gtk-icon-theme-builder:latest .

mkdir ./output
rm -rf ./output/*
docker run --rm --mount src="$(pwd)/output",target=/usr/share/icons,type=bind pop-os-gtk-icon-theme-builder

docker rmi pop-os-gtk-icon-theme-builder:latest

