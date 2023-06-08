#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from chime device
$(call inherit-product, device/xiaomi/chime/device.mk)

PRODUCT_DEVICE := chime
PRODUCT_NAME := omni_chime
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SM6115
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fox_chime-eng 16.1.0 SP2A.220405.004 eng.runner.20230531.234039 test-keys"

BUILD_FINGERPRINT := Xiaomi/fox_chime/chime:16.1.0/SP2A.220405.004/runner05312325:eng/test-keys
