#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from device
$(call inherit-product, device/YUNLIANSHE/rk3566_s/device.mk)

PRODUCT_DEVICE := rk3566_s
PRODUCT_NAME := twrp_rk3566_s
PRODUCT_BRAND := YUNLIANSHE
PRODUCT_MODEL := AD-ZT238
PRODUCT_MANUFACTURER := AIDRIVING

#PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rk3566_s-userdebug 12 SQ3A.220705.003.A1 V2.1.2.202401261343 release-keys"

BUILD_FINGERPRINT := 

