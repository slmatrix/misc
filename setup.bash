#!/bin/bash

#(1) setup docker and cuda on the host
#(2) launch container:
#    > docker run --gpus all --shm-size=64g -it nvidia/cuda:11.1-devel-ubuntu20.04
#(3) inside the above container, setup my typical environment using..:

apt update

apt install -y vim
apt install -y git
apt install -y python3-pip

pip3 install torchvision
pip3 install torchsummary
pip3 install scipy
