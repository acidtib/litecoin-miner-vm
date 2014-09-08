#!/bin/bash
sudo apt-get -y update
for package in htop build-essential libssl-dev libdb5.1-dev libdb5.1++-dev libboost-all-dev libqrencode-dev libminiupnpc-dev git libcurl4-openssl-dev libncurses5-dev pkg-config automake yasm
do
  sudo apt-get -y install $package
done

git clone https://github.com/pooler/cpuminer.git
cd cpuminer
./autogen.sh
./configure CFLAGS="-O3"
make