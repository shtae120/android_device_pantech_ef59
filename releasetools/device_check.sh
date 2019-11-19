#!/sbin/sh

if grep -q "IM-A890S" /dev/block/mmcblk0p10 ; then
		mv /system/vendor/etc/firmware_ef59s/* /system/vendor/firmware/

elif grep -q "IM-A890K" /dev/block/mmcblk0p10 ; then
	mv /system/vendor/etc/firmware_ef59k/* /system/vendor/firmware/

elif grep -q "IM-A890L" /dev/block/mmcblk0p10 ; then
	mv /system/vendor/etc/firmware_ef59l/* /system/vendor/firmware/
fi

rm -rf /system/vendor/etc/firmware_ef59s
rm -rf /system/vendor/etc/firmware_ef59k
rm -rf /system/vendor/etc/firmware_ef59l
rm -rf /system/bin/device_check.sh

