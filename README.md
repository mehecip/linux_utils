# Linux Utils



## A bunch of scripts I use on a regular basis in Linux.

## sign_linux_kernel.sh
Needed to run a Linux kernel with Secure Boot enabled.
Signes an already installed linux kernel image. Makes a copy of the image and updates initramfs and grub.
Requires own MOK keys.

```sh
  sign_linux_kernel.sh 6.7.5
```

## sign_and_install_nvidia_driver.sh
Needed to run the driver module with Secure Boot enabled.
Signes and installs an NVIDIA driver run file.
Requires own MOK keys.

```sh
  sign_and_install_nvidia_driver.sh /home/you/Downloads/NVIDIA-Linux-x86_64-550.40.07.run
```

## dkms_update_nvidia_drivers.sh
Needed to build/install newly driver modules on all Linux kernels.
I need to use it always after installing an NVIDIA driver since I run multiple kernel versions.

```sh
  dkms_update_nvidia_drivers.sh
```
