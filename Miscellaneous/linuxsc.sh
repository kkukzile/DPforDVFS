#!/bin/bash

cd odroidxu3-3.10.y 
make odroidxu3_defconfig 
make menuconfig 
make -j8
mkdir -p mount
sudo mount /dev/mmcblk0p1 ./mount
sudo cp arch/arm/boot/zImage arch/arm/boot/dts/exynos5422-odroidxu3.dtb /media/boot && sync && sudo umount ./mount
sudo mount /dev/mmcblk0p2 ./mount
sudo make modules_install ARCH=arm INSTALL_MOD_PATH=./mount && sync && sudo umount ./mount
rm -rf mount
sudo cp .config /boot/config-`make kernelrelease`
sudo update-initramfs -c -k `make kernelrelease`
sudo mkimage -A arm -O linux -T ramdisk -C none -a 0 -e 0 -n uInitrd -d /boot/initrd.img-`make kernelrelease` /boot/uInitrd-`make kernelrelease`
sudo cp /boot/uInitrd-`make kernelrelease` /media/boot/uInitrd
sudo sync && reboot


