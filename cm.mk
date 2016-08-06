# Release Name
PRODUCT_RELEASE_NAME := hi6210sft

# Inherit Device Configuration
$(call inherit-product, device/huawei/hi6210sft/hi6210sft.mk)


# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hi6210sft
PRODUCT_NAME := cm_hi6210sft
PRODUCT_BRAND := hi6210sft
PRODUCT_MODEL := hi6210sft
PRODUCT_MANUFACTURER := HUAWEI
