#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/xiaomi/minerva

BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_VENDOR_PROPERTY_NAMESPACE := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a73

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Audio
AUDIO_FEATURE_ENABLED_EXTENDED_COMPRESS_FORMAT := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_HDMI_SPK := true
AUDIO_FEATURE_ENABLED_PROXY_DEVICE := true
BOARD_SUPPORTS_SOUND_TRIGGER := true
TARGET_PROVIDES_AUDIO_EXTNS := true
USE_CUSTOM_AUDIO_POLICY := 1

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := bengal
TARGET_NO_BOOTLOADER := true

# Display
TARGET_USES_COLOR_METADATA := true
TARGET_USES_DISPLAY_RENDER_INTENTS := true
TARGET_USES_DRM_PP := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_GRALLOC4 := true
TARGET_USES_HWC2 := true
TARGET_USES_ION := true

# DTB
BOARD_INCLUDE_DTB_IN_BOOTIMG := true

# DTBO
BOARD_INCLUDE_RECOVERY_DTBO := true

# Filesystem
TARGET_FS_CONFIG_GEN := $(COMMON_PATH)/config.fs

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
LOC_HIDL_VERSION := 4.0

# HIDL
DEVICE_MANIFEST_FILE += $(COMMON_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(COMMON_PATH)/compatibility_matrix.xml

# Init
TARGET_INIT_VENDOR_LIB ?= //$(COMMON_PATH):init_xiaomi_minerva
TARGET_RECOVERY_DEVICE_MODULES ?= init_xiaomi_minerva

# Kernel
BOARD_KERNEL_CMDLINE := \
    androidboot.console=ttyMSM0 \
    androidboot.fstab_suffix=qcom \
    androidboot.hardware=qcom \
    androidboot.init_fatal_reboot_target=recovery \
    androidboot.memcg=1 \
    console=ttyMSM0,115200n8 \
    earlycon=msm_geni_serial,0x4a90000 \
    loop.max_part=7 \
    lpm_levels.sleep_disabled=1 \
    msm_rtb.filter=0x237 \
    service_locator.enable=1 \
    swiotlb=2048 \
    video=vfb:640x400,bpp=32,memsize=3072000

BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_IMAGE_NAME := Image

BOARD_BOOT_HEADER_VERSION := 2
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

TARGET_KERNEL_SOURCE := kernel/xiaomi/minerva
TARGET_KERNEL_CONFIG := vendor/bengal-perf_defconfig

# Metadata
BOARD_USES_METADATA_PARTITION := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 100663296
BOARD_CACHEIMAGE_PARTITION_SIZE := 402653184
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_FLASH_BLOCK_SIZE := 262144 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 134217728
BOARD_USERDATAIMAGE_PARTITION_SIZE := 112421842944

BOARD_SUPER_PARTITION_SIZE := 8589934592
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_QTI_DYNAMIC_PARTITIONS_PARTITION_LIST := odm product system system_ext vendor
BOARD_QTI_DYNAMIC_PARTITIONS_SIZE := 8585740288 # (BOARD_SUPER_PARTITION_SIZE - 4MB)

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEM_EXTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_COPY_OUT_ODM := odm
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_SYSTEM_EXT := system_ext
TARGET_COPY_OUT_VENDOR := vendor

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := bengal

# Power
TARGET_POWERHAL_MODE_EXT := $(COMMON_PATH)/power/power-mode.cpp

# Recovery
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/init/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(COMMON_PATH)

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Security patch level
VENDOR_SECURITY_PATCH := 2023-02-01

# Sepolicy
include device/qcom/sepolicy_vndr-legacy-um/SEPolicy.mk
BOARD_VENDOR_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy/vendor
SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy/private
SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy/public

# Touchpanel
TARGET_TAP_TO_WAKE_NODE := "/sys/touchpanel/double_tap"

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_VBMETA_SYSTEM := system system_ext product
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA4096
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Wi-Fi
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_PRIVATE_LIB_EVENT := "ON"
WIFI_DRIVER_DEFAULT := qca_cld3
WIFI_DRIVER_STATE_CTRL_PARAM := "/dev/wlan"
WIFI_DRIVER_STATE_OFF := "OFF"
WIFI_DRIVER_STATE_ON := "ON"
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true
WIFI_HIDL_UNIFIED_SUPPLICANT_SERVICE_RC_ENTRY := true
WPA_SUPPLICANT_VERSION := VER_0_8_X

# Inherit the proprietary files
include vendor/xiaomi/minerva/BoardConfigVendor.mk
