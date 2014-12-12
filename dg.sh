#!/bin/sh

die() {
    echo >&2 "$@"
    exit 1
}

test "$#" -lt 1 && die "Usage: $0 <cmd> [<arg>]..."

cmd="$1"
shift

case $cmd in
    c|commit)
	echo "COMMIT!"
	;;
    p|push)
	echo "PUSH!"
	;;
    cp)
	echo "COMMIT and PUSH!"
	;;
    h|help)
	echo "HELP!"
	;;
    *)
	die "Unknown command '$cmd'"
	;;
esac

