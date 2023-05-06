#!/bin/bash

docker run -v $1:/root/ \
        -v /home/biliddi/.ssh/:/root/.ssh/ \
        --name $2 --rm --gpus all -it \
        pytorch/pytorch:2.0.0-cuda11.7-cudnn8-devel \
        /bin/bash
