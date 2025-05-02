# ========= Development Dockerfile =========
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

# Install build tools and all dev dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    cmake \
    gdb \
    libvtk9-dev \
    qtbase5-dev qttools5-dev qttools5-dev-tools \
    libgl1-mesa-dev libgl1-mesa-glx mesa-utils \
    libxt-dev \
    && rm -rf /var/lib/apt/lists/*

# Set working directory to match VS Code's devcontainer default
WORKDIR /workspace
