# Build

`docker build -t caffe:gpu_cudnn7 caffe-master-keplertopascal-cuda80-cudnn7-nccl134`

# Run

`docker run --gpus all -it --rm -v $HOME/workspace:/workspace caffe:gpu_cudnn7`
