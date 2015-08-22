#!/bin/sh

function stop {
	echo Stopping mysqld
	PIDS=$(pidof mysqld)
	for PID in $PIDS; do
		echo Killing mysqld:$PID
		kill -s TERM $PID
	done
}

trap "stop" SIGTERM

mysqld_safe &

while true; do
	:
done
