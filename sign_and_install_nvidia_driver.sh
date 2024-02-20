#!/bin/bash
IGNORE_CC_MISMATCH=1
export IGNORE_CC_MISMATCH
CC=/usr/bin/gcc
export CC
nvidia_run_file="$1"
sudo chmod +x "$nvidia_run_file"
sudo bash "$nvidia_run_file" -s --module-signing-secret-key=/var/lib/dkms/MOK.key --module-signing-public-key=/var/lib/dkms/MOK.pub