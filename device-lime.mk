#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from minerva
$(call inherit-product, device/xiaomi/minerva/device-common.mk)

PRODUCT_HARDWARE := lime

# Overlays
PRODUCT_PACKAGES += \
    SettingsProviderResLemon \
    SettingsProviderResLime \
    SettingsProviderResPomelo \
    WifiResLemon \
    WifiResLime \
    WifiResPomelo

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/lime/lime-vendor.mk)
