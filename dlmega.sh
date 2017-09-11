#!/bin/sh
megaToolsVersion="1.9.96"
megaTools="/home/$USER/megatools-$megaToolsVersion"
if [ ! -d $megaTools ];
then
sudo apt-get -y install build-essential libglib2.0-dev libssl-dev libcurl4-openssl-dev libgirepository1.0-dev -y --force-yes --quiet
cd /home/$USER
wget "https://megatools.megous.com/builds/megatools-$megaToolsVersion.tar.gz"
tar -xvf "./megatools-$megaToolsVersion.tar.gz"
cd $megaTools
./configure	
make
cd ..
rm -rf "./megatools-$megaToolsVersion.tar.gz"
fi