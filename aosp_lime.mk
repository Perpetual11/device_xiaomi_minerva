#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit common product configuration.
$(call inherit-product, $(LOCAL_PATH)/minerva.mk)

# Inherit from lime device.
$(call inherit-product, $(LOCAL_PATH)/device-lime.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_lime
PRODUCT_DEVICE := lime
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi 9T
