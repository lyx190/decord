#!/usr/bin/env bash

# generate 10 sec testsrc H.264 video, with all default keyframe properties
ffmpeg -n -f lavfi -i testsrc=duration=10:size=1280x720:rate=30 -pix_fmt yuv420p -vcodec libx264 testsrc_h264_10s_default.mp4

# generate 100 sec testsrc H.264 video, with all default keyframe properties
ffmpeg -n -f lavfi -i testsrc=duration=100:size=1280x720:rate=30 -pix_fmt yuv420p -vcodec libx264 testsrc_h264_100s_default.mp4

# generate 100 sec testsrc H.264 video, with keyframes interval 5
ffmpeg -n -f lavfi -i testsrc=duration=100:size=1280x720:rate=30 -pix_fmt yuv420p -vcodec libx264 -x264-params keyint=5:scenecut=0 testsrc_h264_100s_ki5.mp4
