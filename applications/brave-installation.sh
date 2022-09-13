#!bin/bash
echo "-----> Running 'sudo apt install apt-transport-https curl'"
sudo apt install -y apt-transport-https curl
echo "-----> Running 'sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg'"
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
echo "-----> Running 'sudo apt update'"
sudo apt update
echo "-----> Running 'sudo apt install brave-browser'"
sudo apt install -y brave-browser
echo "---------> 'Finished Brave Installaion' <-----------"
