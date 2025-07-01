#!/bin/bash

set -e

# Update package list and install system packages: curl, wget, git, gcc, make, tmux, screen, docker
sudo apt-get update
sudo apt-get install -y curl wget git gcc g++ make tmux screen docker.io

# Install Miniforge (Conda for Linux ARM64, Python 3.13)
# MINIFORGE=Miniforge3-Linux-aarch64.sh
# wget https://github.com/conda-forge/miniforge/releases/latest/download/$MINIFORGE
wget https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-Linux-x86_64.sh \
     -O Miniforge3-Linux-x86_64.sh


# bash $MINIFORGE -b -p $HOME/miniforge3
bash Miniforge3-Linux-x86_64.sh -b -p $HOME/miniforge3

# rm $MINIFORGE

# Initialize conda
# eval "$($HOME/miniforge3/bin/conda shell.bash hook)"
eval "$($HOME/miniforge3/bin/conda shell.bash hook)"
conda init

