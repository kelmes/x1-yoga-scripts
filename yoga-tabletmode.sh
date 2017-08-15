#!/bin/bash
# for some reason disabling the trackpoint enables the touchpad, make sure to disable the trackpoint first.

# adjust to fit, apparently necessary for access to xinput
export DISPLAY=:0
export XAUTHORITY=/home/kieran/.Xauthority

case "$1" in
	disable)
		xinput enable "SynPS/2 Synaptics TouchPad"
		xinput enable "TPPS/2 IBM TrackPoint"
		;;
	enable)
		xinput disable "TPPS/2 IBM TrackPoint"
		xinput disable "SynPS/2 Synaptics TouchPad"
		;;
esac
