#!/bin/bash

# OrangeFox Build Variables for Xiaomi Redmi 9 (lancelot)
export OF_MAINTAINER="frieren"
export FOX_VERSION="R11.1"
export FOX_BUILD_TYPE="Unofficial"

# Crypto/Decryption (Diagnostic bypass to isolate UI hangs)
export OF_SKIP_FBE_DECRYPTION=1

# Screen Settings (Lancelot specific)
export OF_SCREEN_H=2340
export OF_STATUS_H=80
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_HIDE_NOTCH=1
export OF_CLOCK_POS=1

# Hardware/Misc
export OF_USE_GREEN_LED=0
export FOX_ENABLE_APP_MANAGER=1
export OF_SUPPORT_VBMETA_AVB2_PATCHING=1

