#!/usr/bin/env bash

DARKNETDIR=$HOME/darknet
LOGDIR=$HOME/darknet/logs
TIMESTAMP=$(date +"%s")
LOGFILE=$LOGDIR/$TIMESTAMP.log
ERRFILE=$LOGDIR/$TIMESTAMP.err.log

mkdir -p $LOGDIR

cd $DARKNETDIR

./darknet detector train cfg/open-images-window.data cfg/yolov2-tiny-window.cfg weights/darknet19_448.conv.23 >> $LOGFILE 2>> $ERRFILE

