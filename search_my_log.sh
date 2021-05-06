#!/bin/bash

 
display_usage() {
	echo -e "\nUsage: $0 [miner.log] [output file name]\n" 
}

if [  $# -le 1 ] 
then 
	display_usage
	exit 1
fi

grep -E \"ts\":\"2021-\(0[5-9]\|11\|12\)-[0-9]+T[0-9:.]*Z\" $1 | grep -E  'mined new block|winAttemptVRF|mineOne|CAUTION' > $2

