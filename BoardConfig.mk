#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/lancelot

# Inherit from mt6768-common
-include device/xiaomi/mt6768-common/BoardConfigCommon.mk

# Asserts
TARGET_OTA_ASSERT_DEVICE := lancelot,galahad,shiva

# Display
TARGET_SCREEN_DENSITY := 440

# HIDL
ODM_MANIFEST_SKUS += \
    galahad

ODM_MANIFEST_GALAHAD_FILES := $(DEVICE_PATH)/manifest_galahad.xml

# Kernel
TARGET_KERNEL_CONFIG := lancelot_defconfig

# Inherit the proprietary files
include vendor/xiaomi/lancelot/BoardConfigVendor.mk

# ── ORANGEFOX / TWRP UI ──────────────────────────────────────────────────────
TW_THEME := portrait_hdpi
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 2047
TW_DEFAULT_BRIGHTNESS := 900
TW_SCREEN_BLANK_ON_BOOT := true
TARGET_USES_MKE2FS := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_LIBRESETPROP := true
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := en
TW_EXCLUDE_DEFAULT_USB_INIT := true
RECOVERY_SDCARD_ON_DATA := true
TW_HAS_MTP := true
TW_INCLUDE_FASTBOOTD := true
BOARD_SUPPRESS_SECURE_ERASE := true
IGNORE_UPDATE_LOGICAL_PARTITION_ERROR := true
TW_EXCLUDE_APEX := true
TW_DEVICE_VERSION := Voltage_OS_A16_QPR1
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# ── CRYPTO / DECRYPTION ──────────────────────────────────────────────────────
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TW_USE_FSCRYPT_POLICY := 2
BOARD_USES_METADATA_PARTITION := true

# Beanpod TEE + KeyMint 1 libs from Voltage OS vendor
TARGET_RECOVERY_DEVICE_MODULES += \
    android.hardware.keymaster@3.0 \
    android.hardware.keymaster@4.0 \
    android.hardware.security.keymint-V1-ndk \
    libkeymaster4 \
    libkeymaster4support \
    libkeymaster_messages \
    libkeymaster_portable \
    libpuresoftkeymasterdevice \
    libshim_beanpod \
    vendor.mediatek.hardware.keymaster_attestation@1.0 \
    vendor.mediatek.hardware.keymaster_attestation@1.1 \
    vendor.microtrust.hardware.soter@1.0

TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4support.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster_messages.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster_portable.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/android.hardware.keymaster@3.0.so \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/android.hardware.keymaster@4.0.so \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/android.hardware.security.keymint-V1-ndk.so \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/libshim_beanpod.so \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/vendor.mediatek.hardware.keymaster_attestation@1.0.so \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/vendor.mediatek.hardware.keymaster_attestation@1.1.so \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/vendor.microtrust.hardware.soter@1.0.so \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/hw/kmsetkey.beanpod.so \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/hw/gatekeeper.beanpod.so \
    $(TARGET_OUT_VENDOR_SHARED_LIBRARIES)/hw/vendor.mediatek.hardware.keymaster_attestation@1.1-impl.so

# ── MISC ─────────────────────────────────────────────────────────────────────
ALLOW_MISSING_DEPENDENCIES := true
SELINUX_IGNORE_NEVERALLOWS := true
SEPOLICY_IGNORE_NEVERALLOWS := true
