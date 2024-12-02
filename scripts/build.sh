#!/bin/bash

docker build --platform=linux/amd64 -t go-rest-api . -f ./Dockerfile