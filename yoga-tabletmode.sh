#!/bin/bash
# for some reason disabling the trackpoint enables the touchpad, make sure to disable the trackpoint first.

case "$1" in
	disable)
		xinput enable "SynPS/2 Synaptics TouchPad"
		xinput enable "TPPS/2 IBM TrackPoint"
		notify-send "Laptop Mode"
		;;
	enable)
		xinput disable "TPPS/2 IBM TrackPoint"
		xinput disable "SynPS/2 Synaptics TouchPad"
		notify-send "Tablet Mode"
		;;
esac
