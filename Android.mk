#
# Copyright (C) 2025 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
LOCAL_PATH := $(call my-dir)

# 添加 dtb.img 到恢复镜像依赖项
RECOVERY_IMAGE_DEPS += $(PRODUCT_OUT)/dtb.img

# 确保 dtb.img 被包含在恢复分区
$(INSTALLED_RECOVERYIMAGE_TARGET): $(RECOVERY_IMAGE_DEPS)
	@echo "Adding dtb.img to recovery image"
	$(hide) mkdir -p $(PRODUCT_OUT)/recovery/root
	$(hide) cp $(PRODUCT_OUT)/dtb.img $(PRODUCT_OUT)/recovery/root/dtb.img
	$(call build-recoveryimage-target, $@)

ifeq ($(TARGET_DEVICE),rk3566_s)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif

