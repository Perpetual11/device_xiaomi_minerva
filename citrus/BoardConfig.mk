#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/minerva/citrus

# Inherit from minerva
include device/xiaomi/minerva/BoardConfig-common.mk

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_citrus
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_citrus

# Inherit the proprietary files
include vendor/xiaomi/citrus/BoardConfigVendor.mk
