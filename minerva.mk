#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common NekoFest configurations.
$(call inherit-product, vendor/neko/build/product/neko_product.mk)

# Enable AOSP recovery flashing.
TARGET_USES_AOSP_RECOVERY := true

# Device identifier. This must come after all inclusions.
PRODUCT_MANUFACTURER := Xiaomi

# Google Play services configuration
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Build fingerprint.
BUILD_FINGERPRINT := google/redfin/redfin:13/TQ3A.230705.001/10216780:user/release-keys
