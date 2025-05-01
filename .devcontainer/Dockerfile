FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    git git-core \
    libvtk9-dev \
    qtbase5-dev qttools5-dev qttools5-dev-tools \
    libgl1-mesa-dev libgl1-mesa-glx \
    libxt-dev \
    mesa-utils \
    && rm -rf /var/lib/apt/lists/*
