#!/bin/bash

killall -q lemonbar
killall -q lemonconfig

./lemonconfig | lemonbar -p -g 1920x32+0+0 -F "#FFFFFFFF" -B "#FF222222" -U "#268bd2" -u 3 -o -4 -f "JetBrains Mono"-10 -o -f "Hack Nerd Font"-14 | $SHELL
