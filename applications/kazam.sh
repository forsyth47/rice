#!/bin/bash
echo"-------> Adding latest kazam Repo"
sudo add-apt-repository -y ppa:sylvain-pineau/kazam
echo"-------> running apt update"
sudo apt-get update
echo"-------> running apt install kazam"
sudo apt install -y kazam
echo"-------> Finished installing kazam SR"
