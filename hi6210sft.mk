# Android Open Source Project
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# AAPT
PRODUCT_AAPT_CONFIG := xhdpi hdpi normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# ADB
PRODUCT_PROPERTY_OVERRIDES += \
         debug.sf.no_hw_vsync=1 \
         ro.adb.secure=0 \
         ro.secure=0

# Boot
PRE_BOOT_FILES := isp.bin ons.bin
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/rootdir/isp.bin:system/isp.bin \
       $(LOCAL_PATH)/rootdir/ons.bin:system/ons.bin

# Charger
PRODUCT_PACKAGES += \
    	charger_res_images

# Chromium 32 Bit
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/chrome/lib/libwebviewchromium.so:system/lib/libwebviewchromium.so \
       $(LOCAL_PATH)/chrome/lib/libwebviewchromium_loader.so:system/lib/libwebviewchromium_loader.so \
       $(LOCAL_PATH)/chrome/lib/libwebviewchromium_plat_support.so:system/lib/libwebviewchromium_plat_support.so

# Chromium 64 Bit
PRODUCT_COPY_FILES += \
       $(LOCAL_PATH)/chrome/lib64/libwebviewchromium.so:system/lib64/libwebviewchromium.so \
       $(LOCAL_PATH)/chrome/lib64/libwebviewchromium_loader.so:system/lib64/libwebviewchromium_loader.so \
       $(LOCAL_PATH)/chrome/lib64/libwebviewchromium_plat_support.so:system/lib64/libwebviewchromium_plat_support.so

# Dalvik
$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)

# Display
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# File System
PRODUCT_PACKAGES += \
    	make_ext4fs \
    	setup_fs

# Gatord
PRODUCT_PACKAGES += \
	gatord

# GPS
PRODUCT_COPY_FILES += \
	$(call find-copy-subdir-files,*,device/huawei/hi6210sft/rootdir/etc/gnss,system/etc/gnss) \
        $(LOCAL_PATH)/rootdir/bin/agnsscontrol:system/bin/agnsscontrol \
        $(LOCAL_PATH)/rootdir/bin/agnsslog:system/bin/agnsslog \
        $(LOCAL_PATH)/rootdir/bin/glgps:system/bin/glgps \
        $(LOCAL_PATH)/rootdir/bin/gnss_engine:system/bin/gnss_engine \
        $(LOCAL_PATH)/rootdir/bin/gpsdaemon:system/bin/gpsdaemon \
        $(LOCAL_PATH)/rootdir/bin/gpslogd:system/bin/gpslogd \
        $(LOCAL_PATH)/rootdir/etc/gps.conf:system/etc/gps.conf \
        $(LOCAL_PATH)/rootdir/etc/gpsconfig.xml:system/etc/gpsconfig.xml \
        $(LOCAL_PATH)/rootdir/etc/hisi_cfg.ini:system/etc/hisi_cfg.ini \
        $(LOCAL_PATH)/rootdir/etc/hisi_cfg_alice.ini:system/etc/hisi_cfg_alice.ini \
        $(LOCAL_PATH)/rootdir/etc/hisi_cfg_cherry.ini:system/etc/hisi_cfg_cherry.ini \
        $(LOCAL_PATH)/rootdir/lib/hw/gps.hi110x.default.so:system/lib/hw/gps.hi110x.default.so \
        $(LOCAL_PATH)/rootdir/lib/libagnssal.so:system/lib/libagnssal.so \
        $(LOCAL_PATH)/rootdir/lib/libgnssadapter.so:system/lib/libgnssadapter.so \
        $(LOCAL_PATH)/rootdir/lib64/hw/gps.hi110x.default.so:system/lib64/hw/gps.hi110x.default.so \
        $(LOCAL_PATH)/rootdir/lib64/hw/gps.hi6210sft.so:system/lib64/hw/gps.hi6210sft.so \
        $(LOCAL_PATH)/rootdir/lib64/libagnssal.so:system/lib64/libagnssal.so \
        $(LOCAL_PATH)/rootdir/lib64/libgnssadapter.so:system/lib64/libgnssadapter.so

PRODUCT_PACKAGES += \
	gps.hi110x.default \
	gps.hi6210sft \

# Graphics
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib/egl/libGLES_mali.so:system/lib/egl/libGLES_mali.so \
        $(LOCAL_PATH)/rootdir/lib/hw/gralloc.hi6210sft.so:system/lib/hw/gralloc.hi6210sft.so \
        $(LOCAL_PATH)/rootdir/lib/libion.so:system/lib/libion.so

# Graphics 64 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib64/egl/libGLES_mali.so:system/lib64/egl/libGLES_mali.so \
        $(LOCAL_PATH)/rootdir/lib64/hw/gralloc.hi6210sft.so:system/lib64/hw/gralloc.hi6210sft.so \
        $(LOCAL_PATH)/rootdir/lib64/libion.so:system/lib64/libion.so

PRODUCT_PACKAGES += \
	gralloc.hi6210sft \
	libGLES_android \
	libGLES_mali \
	libion

PRODUCT_PROPERTY_OVERRIDES += \
        debug.hwui.render_dirty_regions=false \
    	hw.lcd.lcd_density=320 \
	persist.sys.strictmode.disable=1 \
    	persist.sys.use_dithering=2 \
    	ro.opengles.version=131072 \
    	ro.sf.lcd_density=320

# Hardware Clock
PRODUCT_PACKAGES += \
	hwclock

# ION
PRODUCT_PACKAGES += \
	iontest \
	ion-unit-tests

# Kernel
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/huawei/hi6210sft/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    	$(LOCAL_KERNEL):kernel

# NFC
NFCEE_ACCESS_PATH := $(LOCAL_PATH)/rootdir/etc/nfcee_access.xml
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib64/hw/nfc_nci.pn54x.default.so:system/lib64/hw/ \
    	$(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml \
        $(LOCAL_PATH)/rootdir/etc/libnfc-brcm-alice.conf:system/etc/libnfc-brcm-alice.conf \
        $(LOCAL_PATH)/rootdir/etc/libnfc-nxp-alice.conf:system/etc/libnfc-nxp-alice.conf

PRODUCT_PACKAGES += \
    	libnfc-nci \
    	libnfc_nci_jni \
    	nfc_nci.pn54x.default \
    	NfcNci \
    	Tag \
    	com.android.nfc_extras

# OpenSSH
PRODUCT_PACKAGES += \
	scp \
	sftp \
	ssh-keygen \
	ssh \
	sshd \
	sshd_config \
	start-ssh \
	uim \
	wpa_supplicant

# Overlay
DEVICE_PACKAGE_OVERLAYS := device/huawei/hi6210sft/overlay

# Permissions
PRODUCT_COPY_FILES += \
        frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
        frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
        frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    	frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    	frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
        frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
        frameworks/native/data/etc/android.software.backup.xml:system/etc/permissions/android.software.backup.xml \

# Ramdisk by Haky86 based on B190 Firmware
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/ramdisk/fstab.hi6210sft:root/fstab.hi6210sft \
        $(LOCAL_PATH)/ramdisk/init:root/init \
        $(LOCAL_PATH)/ramdisk/init.5801.rc:root/init.5801.rc \
        $(LOCAL_PATH)/ramdisk/init.6165.rc:root/init.6165.rc \
        $(LOCAL_PATH)/ramdisk/init.10106.rc:root/init.10106.rc \
        $(LOCAL_PATH)/ramdisk/init.51054.rc:root/init.51054.rc \
        $(LOCAL_PATH)/ramdisk/init.102173.rc:root/init.102173.rc \
        $(LOCAL_PATH)/ramdisk/init.142782.rc:root/init.142782.rc \
        $(LOCAL_PATH)/ramdisk/init.audio.rc:root/init.audio.rc \
        $(LOCAL_PATH)/ramdisk/init.chip.usb.rc:root/init.chip.usb.rc \
        $(LOCAL_PATH)/ramdisk/init.connectivity.bcm43xx.rc:root/init.connectivity.bcm43xx.rc \
        $(LOCAL_PATH)/ramdisk/init.connectivity.hi110x.rc:root/init.connectivity.hi110x.rc \
        $(LOCAL_PATH)/ramdisk/init.connectivity.rc:root/init.connectivity.rc \
        $(LOCAL_PATH)/ramdisk/init.device.rc:root/init.device.rc \
        $(LOCAL_PATH)/ramdisk/init.extmodem.rc:root/init.extmodem.rc \
        $(LOCAL_PATH)/ramdisk/init.hi6210sft.rc:root/init.hi6210sft.rc \
        $(LOCAL_PATH)/ramdisk/init.hisi.rc:root/init.hisi.rc \
        $(LOCAL_PATH)/ramdisk/init.manufacture.rc:root/init.manufacture.rc \
        $(LOCAL_PATH)/ramdisk/init.performance.rc:root/init.performance.rc \
        $(LOCAL_PATH)/ramdisk/init.platform.rc:root/init.platform.rc \
        $(LOCAL_PATH)/ramdisk/init.protocol.rc:root/init.protocol.rc \
        $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
        $(LOCAL_PATH)/ramdisk/init.recovery.hi110x.rc:root/init.recovery.hi110x.rc \
        $(LOCAL_PATH)/ramdisk/init.recovery.hi6210sft.rc:root/init.recovery.hi6210sft.rc \
        $(LOCAL_PATH)/ramdisk/init.tee.rc:root/init.tee.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.5801.rc:root/ueventd.5801.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.6165.rc:root/ueventd.6165.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.10106.rc:root/ueventd.10106.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.51054.rc:root/ueventd.51054.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.102173.rc:root/ueventd.102173.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.142782.rc:root/ueventd.142782.rc \
        $(LOCAL_PATH)/ramdisk/ueventd.hi6210sft.rc:root/ueventd.hi6210sft.rc \

# Ramdisk/SBIN
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/ramdisk/sbin/check_root:root/sbin/check_root \
        $(LOCAL_PATH)/ramdisk/sbin/e2fsck_s:root/sbin/e2fsck_s \
        $(LOCAL_PATH)/ramdisk/sbin/emmc_partation:root/sbin/emmc_partation \
        $(LOCAL_PATH)/ramdisk/sbin/hdbd:root/sbin/hdbd \
        $(LOCAL_PATH)/ramdisk/sbin/kmsgcat:root/sbin/kmsgcat \
        $(LOCAL_PATH)/ramdisk/sbin/logctl_service:root/sbin/logctl_service \
        $(LOCAL_PATH)/ramdisk/sbin/oeminfo_nvm_server:root/sbin/oeminfo_nvm_server \
        $(LOCAL_PATH)/ramdisk/sbin/teecd:root/sbin/teecd \

# Zygote
PRODUCT_COPY_FILES += \
	system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.zygote=zygote64_32
