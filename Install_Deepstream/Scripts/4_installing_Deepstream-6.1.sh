#! /bin/bash

# Installing CUDA

cd kritikal_deepstream
sudo apt-get install ./deepstream-6.1_6.1.0-1_amd64.deb 
cd /opt/nvidia/deepstream/deepstream-6.1/
sudo ./install.sh
sudo ldconfig
echo "DEEPSTREAM_DIR='/opt/nvidia/deepstream/deepstream-6.1'" >> ~/.bashrc 

rm ${HOME}/.cache/gstreamer-1.0/registry.x86_64.bin
sudo ln -snf /usr/local/cuda-11.6 /usr/local/cuda

echo "Deepstream-6.1 - Installation is completed !!!"
