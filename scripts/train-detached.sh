#!/usr/bin/env bash

DATE=$(date +%m%d%H%M%S)
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

screen -dmS yolo-$DATE bash -c "$DIR/train.sh"

