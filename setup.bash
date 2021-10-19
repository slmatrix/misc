#!/bin/bash

apt update

apt install -y vim
apt install -y git
apt install -y python3-pip

pip3 install torchvision
pip3 install torchsummary
pip3 install scipy
