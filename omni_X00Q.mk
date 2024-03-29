#
# Copyright (C) 2016 The Android Open-Source Project
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

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_MANUFACTURER := ASUS
PRODUCT_MODEL := ASUS_X00QD
PRODUCT_NAME := omni_X00Q
PRODUCT_BRAND := ASUS
PRODUCT_DEVICE := X00Q

TW_DEVICE_VERSION := k131-decrypt

PRODUCT_PROPERTY_OVERRIDES += ro.config.CID=CID_ERROR

# ASUS stuff to successfully build kernel
ASUS_BUILD_PROJECT := ZE620KL
export ASUS_BUILD_PROJECT
