#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from y2q device
$(call inherit-product, device/samsung/y2q/device.mk)

PRODUCT_DEVICE := y2q
PRODUCT_NAME := omni_y2q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G986N
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="y2qksx-user 11 RP1A.200720.012 G986NKSS3IXB1 release-keys"

BUILD_FINGERPRINT := samsung/y2qksx/y2q:11/RP1A.200720.012/G986NKSS3IXB1:user/release-keys
