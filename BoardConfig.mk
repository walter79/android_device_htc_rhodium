# Copyright (C) 2007 The Android Open Source Project
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

# config.mk
#
# Product-specific compile-time definitions.
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# Fake building with eclair cam
BOARD_USES_ECLAIR_LIBCAMERA := true

-include vendor/htc/hero/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := msm7k
TARGET_BOARD_PLATFORM_GPU := qcom

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOOTLOADER_BOARD_NAME := hero
TARGET_OTA_ASSERT_DEVICE := hero
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_BOOTLOADER_BOARD_NAME=hero

# ARMv6-compatible processor rev 5 (v6l)
TARGET_CPU_ABI := armeabi-v6j
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6j

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION  := VER_0_6_X
BOARD_WLAN_DEVICE       := bcm4329
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_STA_PATH := "/vendor/firmware/bcm4325-rtecdc.bin"
WIFI_DRIVER_FW_AP_PATH := "/vendor/firmware/bcm4325_apsta.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/vendor/firmware/bcm4325-rtecdc.bin nvram_path=/proc/calibration iface_name=wlan "
WIFI_DRIVER_MODULE_NAME := "bcm4329"

BOARD_KERNEL_CMDLINE := no_console_suspend=1 console=null
BOARD_KERNEL_BASE := 0x19200000

#libsurfaceflinger to avoid Draw Texture Extenstion
BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true

BOARD_USES_GENERIC_AUDIO := false

# Use HTC USB Function Switch to enable tethering via USB
BOARD_USE_HTC_USB_FUNCTION_SWITCH := true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true

BOARD_HAVE_BLUETOOTH := true

BOARD_VENDOR_USE_AKMD := true

BOARD_VENDOR_QCOM_AMSS_VERSION := 6355

BOARD_USES_QCOM_HARDWARE := true

TARGET_HARDWARE_3D := false

# Enable legacy graphics code in surfaceflinger, for performance improvement

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true

# OpenGL drivers config file path
BOARD_EGL_CFG := device/htc/hero/egl.cfg

# No authoring clock for OpenCore
# BOARD_NO_PV_AUTHORING_CLOCK := true

BOARD_USE_HTC_LIBSENSORS := true
BOARD_USE_HERO_LIBSENSORS := true

# use old sensors HAL
# TARGET_USES_OLD_LIBSENSORS_HAL := true

BOARD_USES_QCOM_LIBS := true

#TARGET_HAS_ANCIENT_MSMCAMERA := true
BUILD_LIBCAMERA := true
BOARD_CAMERA_LIBRARIES := libcameraservice libcamera
USE_CAMERA_STUB:= false

BOARD_USES_GPSSHIM := false

BOARD_GPS_NEEDS_XTRA := true

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true

BOARD_NO_RGBX_8888 := true

JS_ENGINE := v8

# Stagefright fully enabled
BUILD_WITH_FULL_STAGEFRIGHT := true

# No fallback font by default (space savings)
# NO_FALLBACK_FONT:=true

TARGET_RELEASETOOLS_EXTENSIONS := device/htc/common

# # cat /proc/mtd
# dev:    size   erasesize  name
#mtd0: 005c0000 00020000 "recovery"
#mtd1: 00100000 00020000 "misc"
#mtd2: 00400000 00020000 "boot"
#mtd3: 0c000000 00020000 "system"
#mtd4: 0e4e0000 00020000 "userdata"
#mtd5: 01060000 00020000 "cache"



# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072

#TARGET_RECOVERY_UI_LIB := librecovery_ui_hero librecovery_ui_htc
TARGET_PREBUILT_KERNEL := device/htc/hero/kernel
