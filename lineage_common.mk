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
    ro.vendor.camera.extensions.package=com.google.android.apps.camera.services \
    ro.vendor.camera.extensions.service=com.google.android.apps.camera.services.extensions.service.PixelExtensions

# GMS
ifeq ($(WITH_GMS),true)
GMS_MAKEFILE=gms_64bit_only.mk
endif

# Google Assistant
PRODUCT_PRODUCT_PROPERTIES += ro.opa.eligible_device=true

# Lineage Health
include hardware/google/pixel/lineage_health/device.mk

# Parts
PRODUCT_PACKAGES += \
    GoogleParts

# Touch
include hardware/google/pixel/touch/device.mk

# enable AXP.OS vendor
$(call inherit-product, vendor/axp/config/common.mk)
