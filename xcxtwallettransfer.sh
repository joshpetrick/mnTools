#!/bin/bash

##########################################
# Send Generated Coinonatx to your Wallet
##########################################

#What wallet address would you like to send to? This is mine as an example. Be sure to change it!
wallet=changemetoyourlocaladdress

#How much xcxt did your Masternode Generate since last run?
Generatedxcxt=$(/usr/local/bin/coinonatxd getinfo | awk '/"balance" :/ { print $3 }' | awk -F',' ' { print $1"-"5001.0001000 }' | bc)

if [[ $Generatedxcxt == -* ]]; then
    exit 1
   else
    /usr/local/bin/coinonatxd sendtoaddress $wallet $Generatedxcxt
    exit 1
fi