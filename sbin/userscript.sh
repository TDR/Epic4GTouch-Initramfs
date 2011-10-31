#!/system/bin/sh

busybox mount -o remount,rw /dev/block/mmcblk0p9 /system
# Bootanimation
if [ -f "/system/media/bootanimation.zip" ]; then
	ln -s /system/media/bootanimation.zip /system/media/sanim.zip
fi
busybox mount -o remount,ro /dev/block/mmcblk0p9 /system

# Basic init.d support
/system/bin/logwrapper busybox run-parts /system/etc/init.d

