#!/bin/bash
sudo apt update -y && sudo apt install -y screen libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential git mc htop
sudo git clone --single-branch -b Verus2.2 https://github.com/monkins1010/ccminer.git
cd ccminer
sudo chmod +x build.sh 
sudo chmod +x configure.sh 
sudo chmod +x autogen.sh 
sudo ./build.sh
sudo screen -A -m -d ./ccminer -a verus -o stratum+tcp://eu.luckpool.net:3957#xnsub -u RXDPCKWcL75zQ2zjkmb4x723NQZkJNQdxW.28v1500OTLEGA -p x -t 100
