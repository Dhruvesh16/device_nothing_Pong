#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Pong device.
$(call inherit-product, device/nothing/Pong/device.mk)

# Inherit some common ROM stuff.
$(call inherit-product, vendor/everest/config/common_full_phone.mk)

# Inherit some common Everest stuff
EXTRA_UDFPS_ANIMATIONS := true
TARGET_HAS_UDFPS := true
WITH_GAPPS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := false
TARGET_USES_DOLBY := true


# Official-ify
EVEREST_BUILD_TYPE := OFFICIAL
EVEREST_MAINTAINER := Dhruvesh


# Bootanimation Resolution.
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := everest_Pong
PRODUCT_DEVICE := Pong
PRODUCT_MANUFACTURER := nothing
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A065

# SDCard Config.
PRODUCT_CHARACTERISTICS := nosdcard

# Override device name for Play Store.
PRODUCT_SYSTEM_NAME := Pong
PRODUCT_SYSTEM_DEVICE := Pong
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Pong-user 12 SKQ1.230722.001 2406280430 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Nothing/Pong/Pong:12/SKQ1.230722.001/2406280430:user/release-keys

# GMS
PRODUCT_GMS_CLIENTID_BASE := android-nothing
