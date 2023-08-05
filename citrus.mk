#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common product configuration.
$(call inherit-product, $(LOCAL_PATH)/minerva.mk)

# Inherit from citrus device.
$(call inherit-product, $(LOCAL_PATH)/device-citrus.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := citrus
PRODUCT_DEVICE := citrus
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO M3
