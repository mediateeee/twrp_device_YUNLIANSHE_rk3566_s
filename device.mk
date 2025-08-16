#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
LOCAL_PATH := device/YUNLIANSHE/rk3566_s/

# API
PRODUCT_SHIPPING_API_LEVEL := 32

# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Cpoy prebuilt stuffs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dtb.img:$(TARGET_COPY_OUT_RECOVERY)/dtb.img \
	$(LOCAL_PATH)/prebuilt/dtbo.img:$(TARGET_COPY_OUT_RECOVERY)/dtbo.img \
	$(LOCAL_PATH)/prebuilt/kernel:$(TARGET_COPY_OUT_RECOVERY)/kernel
