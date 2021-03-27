#!/bin/sh

w=$(tput cols)
if [ $w -le 80 ]; then
    lf -remote "send $id set ratios 1:2"
elif [ $w -le 160 ]; then
    lf -remote "send $id set ratios 1:2:3"
else
    lf -remote "send $id set ratios 1:2:3:5"
fi
