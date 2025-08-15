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
    $(DEVICE_PATH)/prebuilt/dtb.img:out/target/product/rk3566_s/dtb.img \
	$(DEVICE_PATH)/prebuilt/dtbo.img:out/target/product/rk3566_s/dtbo.img \
	$(DEVICE_PATH)/prebuilt/kernel:out/target/product/rk3566_s/kernel


