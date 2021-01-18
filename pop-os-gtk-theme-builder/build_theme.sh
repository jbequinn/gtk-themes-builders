#!/bin/bash

docker build -t pop-os-gtk-theme-builder:latest .

mkdir ./output-gtk
rm -rf ./output-gtk/*
mkdir ./output-shell
rm -rf ./output-shell/*
docker run --rm --mount type=bind,source="$(pwd)/output-shell",target=/usr/share/gnome-shell --mount src="$(pwd)/output-gtk",target=/usr/share/themes,type=bind pop-os-gtk-theme-builder

docker rmi pop-os-gtk-theme-builder:latest
