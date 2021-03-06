# Copyright (C) 2014 Olivier K.
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

# Check for target product
ifeq (pa_marvel,$(TARGET_PRODUCT))

# OVERLAY_TARGET adds overlay asset source
OVERLAY_TARGET := pa_mdpi

PREFS_FROM_SOURCE ?= false

# Inherit telephony common stuff
$(call inherit-product, vendor/pa/configs/telephony.mk)

# Include AOSPA main configuration
include vendor/pa/main.mk

# Inherit AOSP device configuration
$(call inherit-product, device/htc/marvel/full_marvel.mk)

# Override AOSP build props
PRODUCT_NAME := pa_marvel
PRODUCT_DEVICE := marvel

## Assign the build fingerprint to the build.prop file.
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=simplicit/htc_marvel/marvel:4.4.2/$(BUILD_ID)/v1.5:user/release-keys

endif
