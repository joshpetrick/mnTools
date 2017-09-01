#!/bin/bash

#########################################################################
#																		#
# 	Created by: Josh Petrick											#
#	Date: 8/31/2017														#
#																		#
#	Purpose: This tool should be able to dynamically any coin			#
#	Requirements: The binary will need to be stored in /usr/local/bin/	#
#	Input: 																#
#		req - name of the binary										#
#		opt - name of backup dir (must be already made)					#
#																		#	
#	Ouput:																#
#		the backup will be created in the file form of					#
#		<date>.<binaryname>.wallet.dat									#
#																		#
#########################################################################

# Name of the binary to use commands on ex: PieCoind
binary=$1
binarypath="/usr/local/bin/"
backuplocation=$2
date=$(date '+%d-%m-%y')
filename=wallet.dat

if [[ $# -gt 0 ]]
then
        if [ -f "$binarypath$binary" ]
        then
                if [ -f "$backuplocation" ]
                then
                else
                        echo "no ocation passed in. using current location: $(pwd)"
						backuplocation=$(pwd) 
                fi
				output=$($binarypath$binary backupwallet $backuplocation/$date.$binary.$filename)
				
				#checking to make sure backup was created
				if [ -f "$backuplocation/$date.$binary.$filename" ]
                then
                        echo "$backuplocation/$date.$binary.$filename successfully created!."
                else
                        echo "there was an issue backing up"
                fi
        else
                echo "$binarypath$binary needs to exist!"
        fi
else
	echo "In order for this script to be dynamic you MUST enter a binary.. an example for Piecoin would be:"
	echo "backupwallet.sh PieCoind ~/Backups/"
fi

