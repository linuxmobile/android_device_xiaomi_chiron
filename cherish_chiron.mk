#
# Copyright (C) 2017-2018 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some chiron stuff
$(call inherit-product, device/xiaomi/chiron/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

PRODUCT_NAME := cherish_chiron
PRODUCT_DEVICE := chiron
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi MIX 2
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redfin-user 11 RQ2A.210605.003 7255357 release-keys" \

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Add livewallpapers
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Gapps
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_WIFI_EXT := true
CHERISH_WITHGAPPS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Non-Gapps
# CHERISH_NONGAPPS=true

# Official
CHERISH_BUILD_TYPE:= UNOFFICIAL

# Maintainer
PRODUCT_GENERIC_PROPERTIES += \
    ro.cherish.maintainer= linuxmobile


BUILD_FINGERPRINT := "google/redfin/redfin:11/RQ2A.210505.003/7255357:user/release-keys"

# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

    
PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/redfin/redfin:11/RQ2A.210505.003/7255357:user/release-keys
