#!/bin/bash

docker build -t arc-theme-builder:latest .

mkdir ./output
rm -rf ./output/*
docker run --rm --mount src="$(pwd)/output",target=/usr/share/themes,type=bind arc-theme-builder
docker rmi arc-theme-builder:latest

