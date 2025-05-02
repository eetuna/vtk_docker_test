# ========= Build Stage ==========
FROM ubuntu:22.04 AS builder

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential cmake \
    libvtk9-dev qtbase5-dev \
    libgl1-mesa-dev libxt-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /workspace
COPY . .
RUN cmake -S . -B build && cmake --build build

# ========= Runtime Stage ==========
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    libvtk9-dev \
    libqt5core5a \
    libqt5gui5 \
    libgl1-mesa-glx \
    libxt6 \
    libqt5opengl5 \
    && rm -rf /var/lib/apt/lists/*



WORKDIR /workspace
COPY --from=builder /workspace/build/main ./main

CMD ["./main"]
