#!/bin/bash

##########################################
# Send Generated ChainCoins to your Wallet
##########################################

#What wallet address would you like to send to? This is mine as an example. Be sure to change it!
wallet=changemetoyourlocaladdress

#How much CHC did your Masternode Generate since last run?
GeneratedCHC=$(/usr/local/bin/chaincoind getinfo | awk '/"balance" :/ { print $3 }' | awk -F',' ' { print $1"-"1001.0001000 }' | bc)

if [[ $GeneratedCHC == -* ]]; then
    exit 1
   else
    /usr/local/bin/chaincoind sendtoaddress $wallet $GeneratedCHC
    exit 1
fi