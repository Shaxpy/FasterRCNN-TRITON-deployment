
### Install Deepstream
```bash
- wget https://developer.nvidia.com/deepstream-6.1_6.1.0-1_amd64deb
- sudo apt-get install ./deepstream-6.1_6.1.0-1_amd64.deb 

- wget http://download.tensorflow.org/models/object_detection/faster_rcnn_inception_v2_coco_2018_01_28.tar.gz
- tar xvf faster_rcnn_inception_v2_coco_2018_01_28.tar.gz

- echo "DEEPSTREAM_DIR='/opt/nvidia/deepstream/deepstream-6.1'" >> ~/.bashrc 

- sudo cp -a trtis_model_repo/faster_rcnn_inception_v2_coco_2018_01_28/frozen_inference_graph.pb $DEEPSTREAM_DIR/samples/trtis_model_repo/faster_rcnn_inception_v2/1/model.graphdef

- wget https://raw.githubusercontent.com/NVIDIA-AI-IOT/deepstream_triton_model_deploy/master/faster_rcnn_inception_v2/config/labels.txt
```

## Directory structures:
```
$DEEPSTREAM_DIR/samples/trtis_model_repo/faster_rcnn_inception_v2/
├── 1
│   └── model.graphdef
├── config.pbtxt
└── labels.txt

$DEEPSTREAM_DIR/samples/configs/deepstream-app-trtis/
├── config_infer_primary_faster_rcnn_inception_v2.txt
├── source1_primary_faster_rcnn_inception_v2.txt
```
## Setting up the configuration files
```bash
- sudo cp -a /trtis_model_repo/faster_rcnn_inception_v2/config.pbtxt $DEEPSTREAM_DIR/samples/trtis_model_repo/faster_rcnn_inception_v2/
- sudo cp -a /trtis_model_repo/faster_rcnn_inception_v2/labels.txt $DEEPSTREAM_DIR/samples/trtis_model_repo/faster_rcnn_inception_v2/

- sudo mkdir $DEEPSTREAM_DIR/samples/configs/deepstream-app-trtis/
- sudo cp -a deepstream-app-trtis/* $DEEPSTREAM_DIR/samples/configs/deepstream-app-trtis/
- sudo cp -a models/* $DEEPSTREAM_DIR/models/


- cd $DEEPSTREAM_DIR/sources/libs/nvdsinfer_customparser
- sudo make all
- sudo cp -a libnvds_infercustomparser.so $DEEPSTREAM_DIR/lib/

- cd $DEEPSTREAM_DIR/samples/configs/deepstream-app-trtis
- deepstream-app -c source1_primary_faster_rcnn_inception_v2.txt
```


### References 
- https://developer.nvidia.com/blog/deploying-models-from-tensorflow-model-zoo-using-deepstream-and-triton-inference-server/
- https://github.com/NVIDIA-AI-IOT/deepstream_triton_model_deploy
