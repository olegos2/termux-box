#!/bin/sh

unset LD_PRELOAD
export PATH=/sbin:/usr/bin:/usr/sbin:/system/bin:/system/xbin:$PATH
export USER=root
export HOME=/root
export LANGUAGE=C
export LANG=C
folder=/data/data/com.termux/files/home/termux-box/ubuntu-fs

if [ ! -e $folder/sdcard ]; then
mkdir $folder/sdcard
fi

sudo mount --bind /dev $folder/dev
sudo mount --bind /sys $folder/sys
sudo mount --bind /proc $folder/proc
sudo mount --bind /dev/pts $folder/dev/pts
sudo mount --bind /data/data/com.termux/files/usr/tmp $folder/tmp
sudo mount --bind /storage/emulated/0/ $folder/sdcard

touch /data/data/com.termux/files/home/termux-box/ubuntu-fs/opt/chroot

sudo chroot $folder /bin/su - root
sudo umount $folder/dev/pts
sudo umount $folder/dev
sudo umount $folder/proc
sudo umount $folder/tmp
sudo umount $folder/sdcard
sudo umount $folder/sys
