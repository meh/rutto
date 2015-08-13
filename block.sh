#!/bin/sh

while IFS= read -r range <&3; do
	echo "-I INPUT -m iprange --src-range $range -j DROP"
	echo "-I OUTPUT -m iprange --dst-range "$range" -j DROP"
done 3< "$1"
