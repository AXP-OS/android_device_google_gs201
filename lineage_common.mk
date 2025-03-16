#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/gs201/overlay-lineage

# AiAi Config
PRODUCT_COPY_FILES += \
    device/google/gs101/allowlist_com.google.android.as.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/allowlist_com.google.android.as.xml

# Camera
PRODUCT_PRODUCT_PROPERTIES += \

# GMS
ifeq ($(WITH_GMS),true)
GMS_MAKEFILE=gms_64bit_only.mk
endif

# Google Assistant
PRODUCT_PRODUCT_PROPERTIES += ro.opa.eligible_device=true

# Lineage Health

# Parts
PRODUCT_PACKAGES += \

# Touch
include hardware/google/pixel/touch/device.mk

# enable AXP.OS vendor
$(call inherit-product, vendor/axp/config/common.mk)
