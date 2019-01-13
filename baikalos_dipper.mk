#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/xiaomi/dipper/device.mk)

# Inherit some common BaikalOS stuff.
$(call inherit-product, vendor/baikalos/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := baikalos_dipper
PRODUCT_DEVICE := dipper
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 8
PRODUCT_MANUFACTURER := Xiaomi

BUILD_FINGERPRINT := "Xiaomi/dipper/dipper:8.1.0/OPM1.171019.011/V9.5.11.0.OEACNFA:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dipper-user 8.1.0 OPM1.171019.011 V9.5.11.0.OEACNFA release-keys" \
    PRODUCT_NAME="dipper" \
    TARGET_DEVICE="dipper"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# BaikalOS Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Andrey Shidakov (andr68rus) and Sergey Vasiliev (sdv22)"