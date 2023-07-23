#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/minerva/lime

# Inherit from minerva
include device/xiaomi/minerva/BoardConfig-common.mk

# Inherit the proprietary files
include vendor/xiaomi/lime/BoardConfigVendor.mk
