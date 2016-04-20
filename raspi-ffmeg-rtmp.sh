#!/bin/bash

#ref: http://stuff.stevenreid.uk/2015/04/16/rtmp-streaming-using-raspivid-ffmpeg-and-nginx-on-raspbian/

 on_die () {
   # kill all children
   pkill -KILL -P $$
 }
 trap 'on_die' TERM
 raspivid -n -mm matrix -w 320 -h 240 -fps 5 -g 100 -t 0 -b 5000000 -o - \
  | ffmpeg -y \
    -f h264 \
    -i - \
    -f flv \
    -r 5 \
    rtmp://localhost/rtmp/live &
 wait
