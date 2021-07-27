#
# Copyright (C) 2021 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/motorola/potter

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true
TARGET_USES_64_BIT_BINDER := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 
BOARD_KERNEL_CMDLINE += androidboot.hardware=qcom user_debug=30 msm_rtb.filter=0x237 ehci-hcd.park=3 
BOARD_KERNEL_CMDLINE += androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 vmalloc=350M 
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz
TARGET_PREBUILT_DT := $(DEVICE_PATH)/prebuilt/dt.img
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_ARCH := arm64
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dt $(TARGET_PREBUILT_DT)
BOARD_KERNEL_IMAGE_NAME := Image.gz
TARGET_KERNEL_CONFIG := potter_defconfig
TARGET_KERNEL_SOURCE := kernel/motorola/potter

# Ramdisk compression
LZMA_RAMDISK_TARGETS := recovery

BOARD_USES_QCOM_HARDWARE := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432 #This is maximum known partition size, but it can be higher, so we just omit it

# Encryption
TARGET_HW_DISK_ENCRYPTION := true
TW_INCLUDE_CRYPTO := true

# TWRP
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TARGET_RECOVERY_FSTAB := device/motorola/potter/recovery/root/fstab/recovery.fstab
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := RGB_565
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TW_NEW_ION_HEAP := true
TW_THEME := portrait_hdpi
TW_SCREEN_BLANK_ON_BOOT := true
TW_INCLUDE_NTFS_3G := true
