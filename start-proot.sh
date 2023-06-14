#!/data/data/com.termux/files/usr/bin/bash
unset LD_PRELOAD
proot --link2symlink -0 -r ubuntu-fs -b /dev -b /proc -b /sys -b ubuntu-fs/root:/dev/shm -b /sdcard -w /root /usr/bin/env -i HOME=/root PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games TERM=$TERM LANG=C.UTF-8 /bin/bash --login