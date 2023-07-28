#!/bin/sh

unset LD_PRELOAD
export PATH=/sbin:/usr/bin:/usr/sbin:/system/bin:/system/xbin:$PATH
export USER=root
export HOME=/root
export LANGUAGE=C
export LANG=C
folder=/data/data/com.termux/files/home/termux-box/ubuntu-fs

if [ -f $folder/opt/virgl ]; then
pkill virgl
rm $PREFIX/tmp/.virgl_test >/dev/null 2>&1
TMPDIR=$PREFIX/tmp $folder/opt/libvirgl_test_server.so &>/dev/null &
while [ ! -e $PREFIX/tmp/.virgl_test ]
do
sleep 0.2
done
sudo chmod 777 $PREFIX/tmp/.virgl_test
fi

sudo mount --bind /dev $folder/dev
sudo mount --bind /sys $folder/sys
sudo mount --bind /proc $folder/proc
sudo mount --bind /dev/pts $folder/dev/pts
sudo mount --bind /data/data/com.termux/files/usr/tmp $folder/tmp
sudo mount --bind /storage/emulated/0/ $folder/sdcard
sudo mount --bind /sdcard/Android/data/com.termux/files $folder/termux

export SECONDARY_STORAGE="$(ls /storage | grep -v '^self$' | grep -v '^emulated$')"
if [ "$SECONDARY_STORAGE" != "" ]; then
sudo mount --bind /storage/$SECONDARY_STORAGE $folder/external
fi

sudo chroot $folder /bin/su - root
sudo umount $folder/dev/pts
sudo umount $folder/dev
sudo umount $folder/proc
sudo umount $folder/tmp
sudo umount $folder/sdcard
sudo umount $folder/termux
sudo umount $folder/external &>/dev/null
sudo umount $folder/sys
if [ -f $folder/opt/virgl ]; then
pkill virgl
fi
