## About the Project
- This is an application of TRITON Inference Server by Nvidia, wherein I am attempting to take the FasterRCNN detection model from TensorFlow Model Zoo and create a DeepStream pipeline to deploy this model on an NVIDIA GPU for object detection.
- This shall be deployed having optimizations that you can leverage to improve application performance for object detection
- DeepStream is a toolkit to build scalable AI solutions for streaming video. You can use another DL model from a framework of your choice and directly run inference on streaming video with it.

### Flow of Triton

1. <span dir="">Setting up my own Triton inference server on Ubuntu 20.04</span>
2. <span dir="">Communicating with the inference server to send requests and receive inference</span>

### Install Deepstream
- Here are all the scripts required to setup the Deepstream app in few minutes!

### References 
- https://docs.nvidia.com/metropolis/deepstream/dev-guide/text/DS_Overview.html
- https://github.com/NVIDIA-AI-IOT/deepstream_triton_model_deploy
