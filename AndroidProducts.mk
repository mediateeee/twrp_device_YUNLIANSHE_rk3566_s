#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/twrp_rk3566_s.mk

COMMON_LUNCH_CHOICES := \
    twrp_rk3566_s-eng \
    twrp_rk3566_s-userdebug \
    twrp_rk3566_s-user \

# 声明预编译文件的依赖关系
$(INSTALLED_DTBIMAGE_TARGET): $(PRODUCT_OUT)/kernel
	$(hide) cp $(DEVICE_PATH)/prebuilt/dtb.img $@

# 确保 recovery 镜像依赖 dtb.img
$(INSTALLED_RECOVERYIMAGE_TARGET): $(INSTALLED_DTBIMAGE_TARGET)