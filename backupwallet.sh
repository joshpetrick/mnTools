#!/bin/bash

##########################################
# Send Generated ChainCoins to your Wallet
##########################################
# Name of the binary to use commands on ex: PieCoind
binary=$1
binarypath="/usr/local/bin/"$1
backuplocation=$2
filename=$(date '+%d-%m-%y').wallet.dat

if [[ $# -gt 0 ]]
then
        if [ -f "$binarypath" ]
        then
                echo "The binary $binarypath does zist"
                if [ -f "$backuplocation" ]
                then
                        echo "$backuplocation exists.. usinng it"
                else
                        echo "Using current location: $(pwd)"
						backuplocation=$(pwd) 
                fi
				
				Test=$($binarypath backupwallet $backuplocation/$filename)
				echo "$Test"
				
        else
                echo "$binarypath doesnt zist"
        fi
else
	echo "In order for this script to be dynamic you MUST enter a binary.. an example for Piecoin would be:"
	echo "backupwallet.sh PieCoind ~/Backups/"
fi

#What wallet address would you like to send to? This is mine as an example. Be sure to change it!
#walletaddress=$1

#How much CHC did your Masternode Generate since last run?
#Test=$(/usr/local/bin/PieCoind backupwallet $walletaddress)

#echo "You chose: $walletaddress"
