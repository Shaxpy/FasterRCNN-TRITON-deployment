#! /bin/bash

mkdir kritikal_deepstream
sudo apt update -y
sudo apt install nano -y
sudo apt install \
libgstreamer1.0-0 \
gstreamer1.0-tools \
gstreamer1.0-plugins-good \
gstreamer1.0-plugins-bad \
gstreamer1.0-plugins-ugly \
libgstrtspserver-1.0-0 \
libjansson4 \
libyaml-cpp-dev \
gcc \
make \
git \
python3 -y
sudo apt-get install gcc make git libtool autoconf autogen pkg-config cmake -y
sudo apt-get install python3 python3-dev python3-pip -y
sudo apt install gcc python3-dev python3-pip libxml2-dev libxslt1-dev zlib1g-dev g++ -y
sudo apt-get install libtool autoconf build-essential pkg-config automake tcsh -y
sudo apt install gcc-8 g++-8 gcc-9 g++-9 gcc-10 g++-10
sudo apt upgrade -y

#sudo apt-get install linux-headers-$(uname -r)

#Downloading NVIDIA Gefore Drivers
cd kritikal_deepstream
wget -nc https://us.download.nvidia.com/XFree86/Linux-x86_64/510.47.03/NVIDIA-Linux-x86_64-510.47.03.run

#Downloading CUDA 11.6 for Ubuntu 20.04

wget -nc https://developer.download.nvidia.com/compute/cuda/11.6.1/local_installers/cuda-repo-ubuntu2004-11-6-local_11.6.1-510.47.03-1_amd64.deb
sudo apt install python3-pip -y
sudo apt-get install -y python-gobject
sudo pip3 install gdown
source ~/.bashrc

#Download DeepStream=>  'deepstream-6.1_6.1.0-1_amd64.deb' file from here: https://developer.nvidia.com/deepstream-6.1_6.1.0-1_amd64deb

# Download  TensorRT=> 'nv-tensorrt-repo-ubuntu2004-cuda11.4-trt8.2.5.1-ga-20220505_1-1_amd64.deb' from: https://developer.nvidia.com/compute/machine-learning/tensorrt/secure/8.2.5.1/local_repos/nv-tensorrt-repo-ubuntu2004-cuda11.4-trt8.2.5.1-ga-20220505_1-1_amd64.deb

wget -nc https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2004/x86_64/cuda-keyring_1.0-1_all.deb

sudo rm /etc/modprobe.d/blacklist-nouveau.conf && sudo touch /etc/modprobe.d/blacklist-nouveau.conf
sudo printf "blacklist nouveau\noptions nouveau modeset=0" | sudo tee /etc/modprobe.d/blacklist-nouveau.conf
sudo update-initramfs -u

echo "Installing OpenGL from source"
sudo apt-get update
sudo apt-get install -y libxi-dev
sudo apt-get install -y freeglut3-dev
sudo apt-get install -y libxcursor-dev
sudo apt-get install -y libxinerama-dev
sudo apt-get install cmake pkg-config
sudo apt-get install mesa-utils libglu1-mesa-dev freeglut3-dev mesa-common-dev
sudo apt-get install libglew-dev libglfw3-dev libglm-dev
sudo apt-get install libao-dev libmpg123-dev
cd /usr/local/lib/
git clone https://github.com/glfw/glfw.git
cd glfw
cmake .
make
sudo make install

printf "\n NOW RESTART YOUR DEVICE USING: \n 'sudo reboot now'\n"
