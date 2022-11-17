#sudo apt update
#sudo apt upgrade


#create swapfile 16GB
##sudo su
##cd /
##dd if=/dev/zero of=swapfile bs=1M count=16000
##mkswap swapfile
##swapon swapfile
#add [/swapfile none swap sw 0 0] to /etc/fstab.
#also remove the default swapfile from /etc/fstab
##vim /etc/fstab
#remove old swapfile
##swapoff -v /var/swap
##rm -R /var/swap
#give readwrite permission to new swapfile, verify it is active
##swapon -s
##chmod 600 /swapfile
##reboot

#apt-get install libopenblas-dev cython3 libatlas-base-dev m4 libblas-dev cmake cython python3-dev python3-yaml tmux
pip3 install --user pyyaml numpy typing

git clone --recursive https://github.com/pytorch/pytorch
cd pytorch
git checkout tags/v1.9.0 -b build
git submodule update --init --recursive


export NO_CUDA=1
export NO_DISTRIBUTED=1
export NO_MKLDNN=1 
export NO_NNPACK=1
export NO_QNNPACK=1
export MAX_JOBS=2

python3 setup.py build
python3 setup.py develop




##<alternate instructions>


##sudo dd if=/dev/zero of=/swap1 bs=1M count=2048
##sudo mkswap /swap1
##sudo vim /etc/fstab
##if no swapfile else replace with below
##/swap1 swap swap


##<alt>
##sudo apt install libopenblas-dev libblas-dev m4 cmake cython \
##python3-dev python3-yaml python3-setuptools


#mkdir pytorch_install && cd pytorch_install
#git clone --recursive https://github.com/pytorch/pytorch
#cd pytorch

#export NO_CUDA=1
#export NO_DISTRIBUTED=1
#export NO_MKLDNN=1 
#export NO_NNPACK=1
#export NO_QNNPACK=1
#export MAX_JOBS=2

#conda activate
##python setup.py install

#python3 setup.py build
##sudo -E python3 setup.py install
