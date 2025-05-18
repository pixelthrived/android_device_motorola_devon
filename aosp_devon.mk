#
# SPDX-FileCopyrightText: 2022-2024 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/motorola/devon/device.mk)

# Inherit some common TPP stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# The Pixel Project specific variables
TARGET_BOOT_ANIMATION_RES := 1080
CUSTOM_MAINTAINER := PixelThrived
#TARGET_ENABLE_BLUR := false # God forbid you even THINK of setting this variable to true!
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_INCLUDE_STOCK_AICORE := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_devon
PRODUCT_DEVICE := devon
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g32
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="devon_g-user 13 T2SNS33.73-22-3-14 d8b49-5dd2a release-keys" \
    BuildFingerprint=motorola/devon_g/devon:13/T2SNS33.73-22-3-14/d8b49-5dd2a:user/release-keys \
    DeviceProduct=devon_g
