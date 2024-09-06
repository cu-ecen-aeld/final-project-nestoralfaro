#!/bin/sh
# rotate screen on startup (due to rotated monitor)
# author: Nestor Alfaro

echo "running S98 script; rotating screen"
echo 1 | tee /sys/class/graphics/fbcon/rotate

echo "running openspot binary"
# openspot

# case "$1" in
#       start)
#               echo "starting openspot"
#               openspot
#               ;;
#       stop)
	#               echo "stopping openspot"
	#               ;;
#       *)
	#               echo "Usage: $0 <start|stop>"
	#       exit 1
	# esac
	# exit 0
