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

# Recovery
PRODUCT_PACKAGES += \
    choice_fn \
    detect_key \
    htcbatt \
    init.recovery.shooter.rc \
    offmode_charging \
    power_test
PRODUCT_COPY_FILES += \
    device/htc/shooter/rootdir/etc/fstab.shooter:root/fstab.shooter \
    device/htc/shooter/rootdir/etc/init.shooter.usb.rc:root/init.shooter.usb.rc \
    device/htc/shooter/rootdir/etc/ueventd.shooter.rc:root/ueventd.shooter.rc \
    device/htc/shooter/rootdir/etc/init.shooter.rc:root/init.shooter.rc \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

# Inherit makefiles
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product-if-exists, vendor/htc/shooter/shooter-vendor-blobs.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

