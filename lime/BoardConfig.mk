#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/minerva/lime

# Inherit from minerva
include device/xiaomi/minerva/BoardConfig-common.mk

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# HIDL
ODM_MANIFEST_SKUS += lemon
ODM_MANIFEST_LEMON_FILES := hardware/st/nfc/aidl/nfc-service-default.xml

# OTA assert
TARGET_OTA_ASSERT_DEVICE := lime,lemon,pomelo

# Inherit the proprietary files
include vendor/xiaomi/lime/BoardConfigVendor.mk
