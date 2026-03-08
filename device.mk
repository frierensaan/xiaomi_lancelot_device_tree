#
# Copyright (C) 2024 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2340

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Shipping API Level
PRODUCT_SHIPPING_API_LEVEL := 29
