#!/bin/bash
#kernel image already installed
kernel_name="$1" # format 6.6.0-rc6-tkg-mehe
sudo sbsign --key /var/lib/dkms/MOK.priv --cert /var/lib/dkms/MOK.pem /boot/vmlinuz-$kernel_name --output /boot/vmlinuz-$kernel_name.signed
sudo cp /boot/initrd.img-$kernel_name{,.signed}
sudo update-grub
sudo sudo update-initramfs -u -k all