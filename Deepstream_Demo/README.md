### Deepstream-Yolo


### INT8 calibration

#### 1. Install OpenCV

```
sudo apt-get install libopencv-dev
```

#### 2. Compile the `nvdsinfer_custom_impl_Yolo` lib with OpenCV support

* DeepStream 6.1 on x86 platform

  ```
  CUDA_VER=11.6 OPENCV=1 make -C nvdsinfer_custom_impl_Yolo
  ```

* DeepStream 6.0.1 / 6.0 on x86 platform

  ```
  CUDA_VER=11.4 OPENCV=1 make -C nvdsinfer_custom_impl_Yolo
  ```

### Adding sample video in `my_deepstream_app_config.txt`
- Add a video path at the following line:

```
...
[source0]
enable=1
type=3
#uri=file:///opt/nvidia/deepstream/deepstream/samples/streams/sample_1080p_h264.mp4
uri=file:///home/shashwat/Downloads/sample/trazer.mp4
num-sources=1
gpu-id=0
cudadec-memtype=0
...
```
#### Run

```
deepstream-app -c deepstream_app_config.txt
```
