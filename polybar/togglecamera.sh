#!/bin/bash
if lsmod | grep uvcvideo
then
    if eval "rmmod -f uvcvideo"
    then
        notify-send -a Camera -u normal  'WebCam Disabled'
    else
        notify-send -a Camera -u normal 'Error Disabling' 'The WebCam was not been disabled'
    fi
else
    if eval "modprobe uvcvideo"
    then
        notify-send -a Camera -u normal 'WebCam Enabled'
    else
        notify-send -a Camera -u normal 'Error Enabling' 'The WebCam was not been enabled.'
    fi
fi