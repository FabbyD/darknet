#!/usr/bin/env bash

DARKNETDIR=$HOME/darknet
LOGDIR=$HOME/darknet/logs
LOGFILE=$LOGDIR/$(date +"%s").txt

mkdir -p $LOGDIR

$DARKNETDIR/darknet detector train $DARKNETDIR/cfg/open-images-window.data $DARKNETDIR/cfg/yolov2-tiny-window.cfg $DARKNETDIR/weights/darknet19_448.conv.23 2>&1 | tee -a $LOGFILE

