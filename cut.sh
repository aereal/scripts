#!/bin/sh

case $# in
	0)
		echo "Usage: $0 PROJNAME [PROJTYPE]"
		exit
		;;
	1)
		PROJ_TYPE=".default"
		;;
	*)
		if [ -d "$HOME/.skeleton/$2" ]; then
			PROJ_TYPE=$2
		else
			PROJ_TYPE=".default"
		fi
		;;
esac

SRC_DIR=$HOME/.skeleton/$PROJ_TYPE
DST_DIR=$1

cp -r $SRC_DIR $DST_DIR

