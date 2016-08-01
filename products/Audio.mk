LOCAL_PATH := device/huawei/hi6210sft

# Audio 32 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib/libaudioalgoservice_jni.so:system/lib/libaudioalgoservice_jni.so \
        $(LOCAL_PATH)/rootdir/lib/libaudio_custom.so:system/lib/libaudio_custom.so \
        $(LOCAL_PATH)/rootdir/lib/libaudioflinger.huawei.so:system/lib/libaudioflinger.huawei.so \
        $(LOCAL_PATH)/rootdir/lib/libaudioom.so:system/lib/libaudioom.so \
        $(LOCAL_PATH)/rootdir/lib/libaudiopolicymanager.so:system/lib/libaudiopolicymanager.so \
        $(LOCAL_PATH)/rootdir/lib/libaudiopolicymanagerdefault.so:system/lib/libaudiopolicymanagerdefault.so \
        $(LOCAL_PATH)/rootdir/lib/libaudio-resampler.so:system/lib/libaudio-resampler.so \
        $(LOCAL_PATH)/rootdir/lib/libaudioroute.so:system/lib/libaudioroute.so \
        $(LOCAL_PATH)/rootdir/lib/libaudioutils.so:system/lib/libaudioutils.so \
        $(LOCAL_PATH)/rootdir/lib/libdrmbitmap.huawei.so:system/lib/libdrmbitmap.huawei.so \
        $(LOCAL_PATH)/rootdir/lib/libhardware_legacy_hisi.so:system/lib/libhardware_legacy_hisi.so \
        $(LOCAL_PATH)/rootdir/lib/libhisi_efuse.so:system/lib/libhisi_efuse.so \
        $(LOCAL_PATH)/rootdir/lib/libhuaweiaudioalgoservice.so:system/lib/libhuaweiaudioalgoservice.so \
        $(LOCAL_PATH)/rootdir/lib/libhuawei_mmi_test.so:system/lib/libhuawei_mmi_test.so \
        $(LOCAL_PATH)/rootdir/lib/libhuaweiprocessing.so:system/lib/libhuaweiprocessing.so \
        $(LOCAL_PATH)/rootdir/lib/libmax98925.so:system/lib/libmax98925.so \
        $(LOCAL_PATH)/rootdir/lib/libmedia_jni.huawei.so:system/lib/libmedia_jni.huawei.so \
        $(LOCAL_PATH)/rootdir/lib/libmediarecorder.huawei.so:system/lib/libmediarecorder.huawei.so \
        $(LOCAL_PATH)/rootdir/lib/libmtp.huawei.so:system/lib/libmtp.huawei.so \
        $(LOCAL_PATH)/rootdir/lib/libservices.huawei.so:system/lib/libservices.huawei.so \
        $(LOCAL_PATH)/rootdir/lib/libsoundtrigger.so:system/lib/libsoundtrigger.so \
        $(LOCAL_PATH)/rootdir/lib/libsoundtriggerservice.so:system/lib/libsoundtriggerservice.so \
        $(LOCAL_PATH)/rootdir/lib/libsrsprocessing.so:system/lib/libsrsprocessing.so \
        $(LOCAL_PATH)/rootdir/lib/libstagefright.huawei.so:system/lib/libstagefright.huawei.so \
        $(LOCAL_PATH)/rootdir/lib/libswsprocessing.so:system/lib/libswsprocessing.so \
        $(LOCAL_PATH)/rootdir/lib/libtfa9895.so:system/lib/libtfa9895.so \
        $(LOCAL_PATH)/rootdir/lib/libwpa_client_hisi.so:system/lib/libwpa_client_hisi.so \

# Audio 64 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib64/libaudioalgoservice_jni.so:system/lib64/libaudioalgoservice_jni.so \
        $(LOCAL_PATH)/rootdir/lib64/libaudio_custom.so:system/lib64/libaudio_custom.so \
        $(LOCAL_PATH)/rootdir/lib64/libaudioom.so:system/lib64/libaudioom.so \
        $(LOCAL_PATH)/rootdir/lib64/libaudiopreprocessing.so:system/lib64/libaudiopreprocessing.so \
        $(LOCAL_PATH)/rootdir/lib64/libaudio-resampler.so:system/lib64/libaudio-resampler.so \
        $(LOCAL_PATH)/rootdir/lib64/libaudioroute.so:system/lib64/libaudioroute.so \
        $(LOCAL_PATH)/rootdir/lib64/libdrmbitmap.huawei.so:system/lib64/libdrmbitmap.huawei.so \
        $(LOCAL_PATH)/rootdir/lib64/libhardware_legacy_hisi.so:system/lib64/libhardware_legacy_hisi.so \
        $(LOCAL_PATH)/rootdir/lib64/libhisi_efuse.so:system/lib64/libhisi_efuse.so \
        $(LOCAL_PATH)/rootdir/lib64/libhuawei_mmi_test.so:system/lib64/libhuawei_mmi_test.so \
        $(LOCAL_PATH)/rootdir/lib64/libmax98925.so:system/lib64/libmax98925.so \
        $(LOCAL_PATH)/rootdir/lib64/libmedia_jni.huawei.so:system/lib64/libmedia_jni.huawei.so \
        $(LOCAL_PATH)/rootdir/lib64/libmediarecorder.huawei.so:system/lib64/libmediarecorder.huawei.so \
        $(LOCAL_PATH)/rootdir/lib64/libmtp.huawei.so:system/lib64/libmtp.huawei.so \
        $(LOCAL_PATH)/rootdir/lib64/libservices.huawei.so:system/lib64/libservices.huawei.so \
        $(LOCAL_PATH)/rootdir/lib64/libsoundtrigger.so:system/lib64/libsoundtrigger.so \
        $(LOCAL_PATH)/rootdir/lib64/libsoundtriggerservice.so:system/lib64/libsoundtriggerservice.so \
        $(LOCAL_PATH)/rootdir/lib64/libstagefright.huawei.so:system/lib64/libstagefright.huawei.so \
        $(LOCAL_PATH)/rootdir/lib64/libswsprocessing.so:system/lib64/libswsprocessing.so \
        $(LOCAL_PATH)/rootdir/lib64/libtfa9895.so:system/lib64/libtfa9895.so \
        $(LOCAL_PATH)/rootdir/lib64/libwpa_client_hisi.so:system/lib64/libwpa_client_hisi.so \

# Framework
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar

# K3 Codec 32 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_ffmpeg.so:system/lib/lib_k3_ffmpeg.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_avc.so:system/lib/lib_k3_omx_avc.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_avcenc.so:system/lib/lib_k3_omx_avcenc.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omxcore.so:system/lib/lib_k3_omxcore.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_mpeg2.so:system/lib/lib_k3_omx_mpeg2.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_mpeg4.so:system/lib/lib_k3_omx_mpeg4.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_rv.so:system/lib/lib_k3_omx_rv.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_vc1.so:system/lib/lib_k3_omx_vc1.so \
        $(LOCAL_PATH)/rootdir/lib/lib_k3_omx_vp8.so:system/lib/lib_k3_omx_vp8.so \

# K3 Codec 64 Bit
PRODUCT_COPY_FILES += \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_ffmpeg.so:system/lib64/lib_k3_ffmpeg.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_avc.so:system/lib64/lib_k3_omx_avc.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_avcenc.so:system/lib64/lib_k3_omx_avcenc.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omxcore.so:system/lib64/lib_k3_omxcore.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_mpeg2.so:system/lib64/lib_k3_omx_mpeg2.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_mpeg4.so:system/lib64/lib_k3_omx_mpeg4.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_rv.so:system/lib64/lib_k3_omx_rv.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_vc1.so:system/lib64/lib_k3_omx_vc1.so \
        $(LOCAL_PATH)/rootdir/lib64/lib_k3_omx_vp8.so:system/lib64/lib_k3_omx_vp8.so \

