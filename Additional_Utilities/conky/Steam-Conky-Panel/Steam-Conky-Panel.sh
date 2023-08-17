#!/bin/bash
killall conky
conky -d -c ~/.conky/Steam-Conky-Panel/.conkyrc
& exit 0
