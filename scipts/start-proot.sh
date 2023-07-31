#!/bin/bash

if [ -f ubuntu-fs/opt/virgl ]; then
    pkill virgl
    rm $PREFIX/tmp/.virgl_test >/dev/null 2>&1
    TMPDIR=$PREFIX/tmp ubuntu-fs/opt/libvirgl_test_server.so &>/dev/null &
    while [ ! -e $PREFIX/tmp/.virgl_test ]; do
        sleep 0.2
    done
    chmod 777 $PREFIX/tmp/.virgl_test
fi

unset LD_PRELOAD
command="proot"
command+=" --link2symlink -0 -r ubuntu-fs -w /root -b /dev -b /proc -b /sys -b $PREFIX/tmp:/tmp"
command+=" -b ubuntu-fs/root:/dev/shm"
command+=" -b /sdcard"
command+=" -b /sdcard/Android/data/com.termux/files:/termux"

export SECONDARY_STORAGE="$(ls /storage | grep -v '^self$' | grep -v '^emulated$')"
if [ "$SECONDARY_STORAGE" != "" ]; then
    command+=" -b /storage/$SECONDARY_STORAGE:/external"
fi

command+=" /usr/bin/env -i HOME=/root TERM=$TERM PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games LANG=C.UTF-8 /bin/bash --login"

exec $command

if [ -f ubuntu-fs/opt/virgl ]; then
pkill virgl
fi
