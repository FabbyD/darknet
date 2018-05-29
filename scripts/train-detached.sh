#!/usr/bin/env bash

DATE=$(date +%m%d%H%M%S)

screen -d -m -S yolo-$DATE ./train.sh

