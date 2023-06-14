#!/data/data/com.termux/files/usr/bin/bash
cd $(dirname $0)
unset LD_PRELOAD
command="proot"
command+=" --link2symlink -0"
command+=" -r ubuntu-fs"   
command+=" -b /dev -b /proc -b /sys -b ubuntu-fs/root:/dev/shm"
command+=" -b /sdcard -w /root"
command+=" /usr/bin/env -i"
command+=" HOME=/root"
command+=" PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games"
command+=" TERM=$TERM"
command+=" LANG=C.UTF-8"
command+=" /bin/bash --login"
exec $command
