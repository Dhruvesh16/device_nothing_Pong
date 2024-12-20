#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Pong device
$(call inherit-product, device/nothing/Pong/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)


# Inherit some common Everest stuff
EXTRA_UDFPS_ANIMATIONS := true
TARGET_HAS_UDFPS := true
WITH_GAPPS := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# Official-ify
EVEREST_BUILD_TYPE := OFFICIAL
EVEREST_MAINTAINER := Dhruvesh

PRODUCT_NAME := derp_Pong
PRODUCT_DEVICE := Pong
PRODUCT_MANUFACTURER := nothing
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A065

PRODUCT_SYSTEM_NAME := Pong
PRODUCT_SYSTEM_DEVICE := Pong

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Pong-user 12 SKQ1.230722.001 2406280430 release-keys" \
    BuildFingerprint=Nothing/Pong/Pong:12/SKQ1.230722.001/2406280430:user/release-keys \
    DeviceName=Pong \
    DeviceProduct=A065 \
    SystemDevice=Pong \
    SystemName=Pong
