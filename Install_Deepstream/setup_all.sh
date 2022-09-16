#! /bin/bash

#sudo bash ./Scripts/Remove_old_setup.sh # ---> Uncomment this line only when you want to delete all graphic drivers, cuda, and previous dependencies
sudo bash ./Scripts/1_Installing_Dependencies.sh
sudo bash ./Scripts/2_Installing_Cuda_11.6.sh
sudo bash ./Scripts/3_install_TensorRT_8.2.sh
sudo bash ./Scripts/4_installing_Deepstream-6.1.sh
sudo bash ./Scripts/5_Creating_Bindings.sh
