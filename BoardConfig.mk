#
# Copyright (C) 2016 The CyanogenMod Project
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

-include vendor/google/shamrock/BoardConfigVendor.mk

DEVICE_PATH := device/google/shamrock

VENDOR_PATH := vendor/google/shamrock

BOARD_VENDOR := android-google

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Asserts
TARGET_OTA_ASSERT_DEVICE := shamrock

# Platform
TARGET_BOARD_PLATFORM := msm8952
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8952
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

# Kernel (Hercules kernel sources)
BOARD_KERNEL_CMDLINE := ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --kernel_offset 0x00008000 --second_offset 0x00f00000
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_SOURCE := kernel/google/shamrock
TARGET_KERNEL_CONFIG := cm_shamrock_defconfig  
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/kernel

# Custom bootimage
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := device/google/shamrock/custombootimg.mk

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560	
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27258650624
BOARD_FLASH_BLOCK_SIZE := 131072

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Audio
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# CMHW
BOARD_USES_CYANOGEN_HARDWARE := true
BOARD_HARDWARE_CLASS += \
    $(DEVICE_PATH)/cmhw \
    hardware/cyanogen/cmhw

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Display
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true

# FM
TARGET_QCOM_NO_FM_FIRMWARE := true

# Init
TARGET_UNIFIED_DEVICE := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_USERIMAGES_USE_EXT4 := true

# SELinux
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X
