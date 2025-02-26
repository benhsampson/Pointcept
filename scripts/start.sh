#!/bin/bash

# --- start.sh ---
# Set up everything to get Pointcept running.
#
# Requirements:
# - WSL2
# - CUDA 12.*
# - miniconda
# - CUDA Toolkit 12.*
#   ensure you run mandatory actions after installation: 
#   https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html#mandatory-actions
#   $ nvcc --version # and confirm that the version is 12.*

conda create -n pointcept python=3.8 -y
conda activate pointcept
conda install ninja -y
conda install pytorch==2.1.0 torchvision==0.16.0 torchaudio==2.1.0 pytorch-cuda=12.1 -c pytorch -c nvidia
conda install h5py pyyaml -c anaconda -y
conda install sharedarray tensorboard tensorboardx yapf addict einops scipy plyfile termcolor timm -c conda-forge -y
conda install pytorch-cluster pytorch-scatter pytorch-sparse -c pyg -y
pip install torch-geometric
cd libs/pointops
python setup.py install
cd ../..
pip install spconv-cu120
pip install flash-attn --no-build-isolation