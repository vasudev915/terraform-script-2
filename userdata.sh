#!/bin/bash
sudo apt update -y
sudo apt-get full-upgrade -y
sudo apt-get  install python3-pip -y
sudo git clone https://github.com/vasudev915/car-prediction.git 
cd car-prediction
sudo apt install python3-pip -y
pip install -r requirements.txt 
screen -m -d python3 app.py
