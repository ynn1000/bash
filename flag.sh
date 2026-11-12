#!/bin/bash

mem(){
	free -h | grep Mem
}

disk(){
	df -h
}

sys(){
	fastfetch
}

while getopts 'abc' option; do
	case $option in
		a)
			mem
			;;

		b)	disk
			;;

		c)	sys
			;;
	esac
done
