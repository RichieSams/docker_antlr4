#!/bin/sh
set -e

case "$1" in 
	generate)
		shift
		exec java -jar /antlr-${ANTLR_VERSION}-complete.jar $*
		;;
	testrig)
		shift
		exec java org.antlr.v4.gui.TestRig $*
		;;
	pingtest)
		exec /bin/ping -c 10 8.8.8.8
		;;
esac

exec "$@"
