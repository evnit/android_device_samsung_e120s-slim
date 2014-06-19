#
# Copyright (C) 2011 The CyanogenMod Project
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

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/e120s/e120s-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/e120s/overlay

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=320

# GPS
PRODUCT_PACKAGES += \
    gps.msm8660

GPS_CONF := device/samsung/e120s/gps/gps.conf

PRODUCT_COPY_FILES += \
    $(GPS_CONF):/system/etc/gps.conf

# Ramdisk
PRODUCT_COPY_FILES += \
    device/samsung/e120s/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc

# BT firmware
PRODUCT_COPY_FILES += \
    device/samsung/e120s/firmware/bcm4330B1.hcd:system/etc/firmware/bcm4330B1.hcd

# init.d scripts
PRODUCT_COPY_FILES += \
    device/samsung/e120s/root/system/etc/init.d/91fixoverlays:system/etc/init.d/91fixoverlays

# Inherit from celox-common
$(call inherit-product, device/samsung/celox-common/celox-common.mk)

$(call inherit-product-if-exists, vendor/samsung/e120s/e120s-vendor.mk)
