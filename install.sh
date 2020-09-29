#!/usr/bin/env bash
set -euo pipefail

sudo apt-get update && sudo apt-get install -y \
    build-essential \
    libssl-dev \
    uuid-dev \
    libgpgme11-dev \
    squashfs-tools \
    libseccomp-dev \
    wget \
    pkg-config \
    git \
    cryptsetup


sudo apt-get clean

export VERSION=1.13 OS=linux ARCH=amd64  # Replace the values as needed
wget "https://dl.google.com/go/go${VERSION}.${OS}-${ARCH}.tar.gz" # Downloads the required Go package
sudo tar -C /usr/local -xzvf "go${VERSION}.${OS}-${ARCH}.tar.gz"  # Extracts the archive
rm go${VERSION}.${OS}-${ARCH}.tar.gz    # Deletes the ``tar`` file

export PATH=/usr/local/go/bin:$PATH

export VERSION=3.6.3 && # adjust this as necessary \
    wget https://github.com/sylabs/singularity/releases/download/v${VERSION}/singularity-${VERSION}.tar.gz && \
    tar -xzf singularity-${VERSION}.tar.gz && \
    cd singularity

./mconfig && \
    make -C builddir && \
    sudo make -C builddir install

cd .. && rm -r singularity && rm singularity*.tar.gz
