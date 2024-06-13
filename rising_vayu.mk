#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit common products
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configurations
$(call inherit-product, device/xiaomi/vayu/device.mk)

# Inherit common AOSP configurations
$(call inherit-product, vendor/rising/config/rising.mk)


# Device identifier
PRODUCT_BRAND := POCO
PRODUCT_DEVICE := vayu
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := rising_vayu
PRODUCT_SYSTEM_NAME := vayu_global
PRODUCT_SYSTEM_DEVICE := vayu
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_AOSP_RECOVERY := false
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

#Bootanim
TARGET_BOOT_ANIMATION_RES := 1080

#RisingOS
RISING_CHIPSET := "Snapdragon860"
RISING_MAINTAINER := "momenabdulrazek"
TARGET_ENABLE_BLUR := true
WITH_GMS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vayu_global-user 13 TKQ1.221013.002 V14.0.3.0.TJUMIXM release-keys" \
    PRODUCT_MODEL=M2102J20SG

BUILD_FINGERPRINT := POCO/vayu_global/vayu:13/RKQ1.200826.002/V14.0.3.0.TJUMIXM:user/release-keys

