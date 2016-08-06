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
        frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
        frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
        frameworks/native/data/etc/android.software.app_widgets.xml:system/etc/permissions/android.software.app_widgets.xml \
        frameworks/native/data/etc/android.software.backup.xml:system/etc/permissions/android.software.backup.xml \

# Zygote
PRODUCT_COPY_FILES += \
	system/core/rootdir/init.zygote64_32.rc:root/init.zygote64_32.rc

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	ro.zygote=zygote64_32
