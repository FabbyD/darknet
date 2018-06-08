#!/usr/bin/env bash

DARKNETDIR=$HOME/darknet
LOGDIR=$HOME/darknet/logs
TIMESTAMP=$(date +"%s")
LOGFILE=$LOGDIR/yolov2.$TIMESTAMP.log

mkdir -p $LOGDIR

cd $DARKNETDIR

#./darknet detector train cfg/lg2-window.data cfg/yolov2-tiny-window.cfg weights/darknet19_448.conv.23 &> $LOGFILE

./darknet detector train cfg/lg2-window.data cfg/yolov2-window.cfg weights/darknet19_448.conv.23 &> $LOGFILE
