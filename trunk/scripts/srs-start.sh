#!/bin/bash

# gnome-terminal -- bash -c "~/Projects/srs/trunk/scripts/srs-start.sh"

WORK_DIR=`pwd`
SCRIPTS_DIR=$(cd $(dirname $0); pwd)

sleep 3
# sudo apt-get install xdotool
xdotool windowminimize $(xdotool getactivewindow)
sleep 3
# xdotool key esc
xdotool mousemove 800 679
xdotool click 1
sleep 3

cd $SCRIPTS_DIR
cd ..
objs/srs -c conf/rtmp2rtc.conf
