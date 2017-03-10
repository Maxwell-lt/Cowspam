#! /bin/bash

WAITTIME=$1
if [ $# -eq 0 ]
then
	WAITTIME=5
	echo "No time specified, falling back to 5 seconds between cows"
else
	if [ $WAITTIME -eq $WAITTIME ] 2>/dev/null; then
		echo "Waiting $WAITTIME seconds between cows"
	else
		WAITTIME=5
		echo "No time specified, falling back to 5 seconds between cows"
	fi
fi

NUMCOWS=0

while true; do
	# Assumes the logged-in X instance is on DISPLAY 0, change if this is not the case
	DISPLAY=:0 xcowfortune &

	let NUMCOWS=$NUMCOWS+1

	if [ $NUMCOWS -eq 1 ]
	then
		echo 1 cow has been printed\!\!\!
	else
		echo $NUMCOWS cows have been printed\!\!\!
	fi

	sleep $WAITTIME
done

