
TARGET_OTA_ASSERT_DEVICE := j1acevelte,j1aceveltejv,j1acevelteub

PLATFORM_PATH := device/samsung/sharkls-common

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := sc8830
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
WITH_SU := true

# Remove "system.new.dat" format.System files are now in "system" folder of the ROM Package.(Easy for development purpose)
BLOCK_BASED_OTA := true

BOARD_NEEDS_MEMORYHEAPION_SPRD := true
BOARD_USE_EMMC := true

DEVICE_RESOLUTION := 480x800

TARGET_BOOTLOADER_BOARD_NAME := SC9830I

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(PLATFORM_PATH)/include

TARGET_KERNEL_SOURCE := kernel/samsung/sharkls
TARGET_KERNEL_HAVE_EXFAT := true
TARGET_KERNEL_HAVE_NTFS := true
NEED_KERNEL_MODULE_ROOT := true

# include SPRD_MODULES
-include $(PLATFORM_PATH)/modules.mk

TARGET_KERNEL_MODULES := SPRD_MODULES
TARGET_IGNORE_RO_BOOT_REVISION := true

BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --cmdline 'console=ttyS1,115200n8'

BOARD_CUSTOM_BOOTIMG_MK := $(PLATFORM_PATH)/bootimg.mk
BOARD_KERNEL_SEPARATED_DT := true

TARGET_CUSTOM_DTBTOOL := dtbToolSprd

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2252341248
# Reserve space for data encryption (5175771136-16384)
BOARD_USERDATAIMAGE_PARTITION_SIZE := 5175754752
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_PERSISTIMAGE_PARTITION_SIZE := 10485760
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# CMHW
BOARD_HARDWARE_CLASS := hardware/samsung/cmhw/

# Bionic
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# telephony
BOARD_PROVIDES_LIBRIL := true
BOARD_PROVIDES_RILD := true
USE_BOOT_AT_DIAG := true
BOARD_RIL_CLASS := ../../../$(PLATFORM_PATH)/ril/java/

# lights
TARGET_PROVIDES_LIBLIGHT := true

# Graphics
TARGET_GPU_PLATFORM := utgard
USE_SPRD_HWCOMPOSER := true
USE_OPENGL_RENDERER := true
USE_OVERLAY_COMPOSER_GPU := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3

# Storage
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/20200000.usb/gadget/lun%d/file"

# Enable HW based full disk encryption
#TARGET_HW_DISK_ENCRYPTION := true

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

#######################################################
# camera configs
USE_CAMERA_STUB := true
BOARD_USE_SPRD_COLORFORMAT := true
#back camera rotation capture
TARGET_BOARD_BACK_CAMERA_ROTATION := false
#front camera rotation capture
TARGET_BOARD_FRONT_CAMERA_ROTATION := false
# camera sensor type
CAMERA_SENSOR_TYPE_BACK := "s5k4ec_mipi_yuv"
#CAMERA_SENSOR_TYPE_FRONT := "db8221a_yuv"
# select camera 2M,3M,5M,8M
CAMERA_SUPPORT_SIZE := 5M
FRONT_CAMERA_SUPPORT_SIZE := 2M
#TARGET_BOARD_CAMERA_SMJ320 := true
TARGET_BOARD_NO_FRONT_SENSOR := false
TARGET_BOARD_CAMERA_FLASH_CTRL := false
#read otp method 1:from kernel 0:from user
TARGET_BOARD_CAMERA_READOTP_METHOD := 1
#face detect
TARGET_BOARD_CAMERA_FACE_DETECT := true
TARGET_BOARD_CAMERA_FD_LIB := omron
#hdr
TARGET_BOARD_CAMERA_HDR_CAPTURE := true
#sensor interface
TARGET_BOARD_BACK_CAMERA_INTERFACE := mipi
TARGET_BOARD_FRONT_CAMERA_INTERFACE := mipi
#select camera zsl cap mode
TARGET_BOARD_CAMERA_CAPTURE_MODE := true
#select camera zsl force cap mode
TARGET_BOARD_CAMERA_FORCE_ZSL_MODE := true
#sprd zsl feature
TARGET_BOARD_CAMERA_SPRD_PRIVATE_ZSL := false
#rotation capture
TARGET_BOARD_CAMERA_ROTATION_CAPTURE := false
#select camera not support autofocus
TARGET_BOARD_CAMERA_NO_AUTOFOCUS_DEV := false
#uv denoise enable
TARGET_BOARD_CAMERA_CAPTURE_DENOISE := false
#y denoise enable
TARGET_BOARD_CAMERA_Y_DENOISE := true
#select continuous auto focus
TARGET_BOARD_CAMERA_CAF := true
TARGET_BOARD_CAMERA_NO_FLASH_DEV := false
#image angle in different project
TARGET_BOARD_CAMERA_ADAPTER_IMAGE := 0
#pre_allocate capture memory
TARGET_BOARD_CAMERA_PRE_ALLOC_CAPTURE_MEM := true
#sc8830g isp ver 0;sc9630 isp ver 1;sp9832a_2h11 isp version 2
TARGET_BOARD_CAMERA_ISP_SOFTWARE_VERSION := 3
#set hal version to 1.0
TARGET_USES_MEDIA_EXTENSIONS := true
TARGET_BOARD_CAMERA_HAL_VERSION := 1.0
#support auto anti-flicker
TARGET_BOARD_CAMERA_ANTI_FLICKER := true
#multi cap memory mode
TARGET_BOARD_MULTI_CAP_MEM := true
#low capture memory
TARGET_BOARD_LOW_CAPTURE_MEM := true
#select the vcm chip driver BU64241GWZ
TARGET_VCM_BU64241GWZ := true
#select mipi d-phy mode(none, phya, phyb, phyab)
TARGET_BOARD_FRONT_CAMERA_MIPI := phyb
TARGET_BOARD_BACK_CAMERA_MIPI := phya
#select ccir pclk src(source0, source1)
TARGET_BOARD_FRONT_CAMERA_CCIR_PCLK := source0
TARGET_BOARD_BACK_CAMERA_CCIR_PCLK := source0
#third lib
TARGET_BOARD_USE_THRID_LIB := true
TARGET_BOARD_USE_THIRD_AWB_LIB_A := true
TARGET_BOARD_USE_ALC_AE_AWB := false
TARGET_BOARD_USE_THIRD_AF_LIB_A := true

#######################################################

# Audio
BOARD_USES_GENERIC_AUDIO := true
BOARD_USES_TINYALSA_AUDIO := true
BOARD_USES_ALSA_AUDIO := false
BUILD_WITH_ALSA_UTILS := false
BOARD_AUDIO_OLD_MODEM := false

# power
BOARD_POWERHINT_HAL := interactive

# Charger
BACKLIGHT_PATH := "/sys/class/backlight/panel/brightness"
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_NO_CHARGER_LED := true
HAVE_KEYBOARD_BACKLIGHT := false
BOARD_CHARGING_MODE_BOOTING_LPM := "/sys/class/power_supply/battery/batt_lp_charging"
CHARGING_ENABLED_PATH := "/sys/class/power_supply/battery/batt_lp_charging"

# zygote whitelist
PATH_WHITELIST_EXTRA_H := "/sys/devices/sec-battery.4/power_supply/battery/batt_lp_charging"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
SPRD_WCNBT_CHISET := marlin
BOARD_SPRD_WCNBT_MARLIN := true

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(PLATFORM_PATH)/configs/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := $(PLATFORM_PATH)/configs/bluetooth/libbt_vndcfg.txt

# WIFI configs
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_2_1_DEVEL
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_sprdwl
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_sprdwl
BOARD_WLAN_DEVICE           := sc2341
WIFI_DRIVER_FW_PATH_PARAM   := "/data/misc/wifi/fwpath"
WIFI_DRIVER_FW_PATH_STA     := "sta_mode"
WIFI_DRIVER_FW_PATH_P2P     := "p2p_mode"
WIFI_DRIVER_FW_PATH_AP      := "ap_mode"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/sprdwl.ko"
WIFI_DRIVER_MODULE_NAME     := "sprdwl"

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

# DRM
BOARD_WIDEVINE_OEMCRYPTO_LEVEL := 3

# Dex
ifeq ($(HOST_OS),linux)
  ifeq ($(TARGET_BUILD_VARIANT),user)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
    endif
  endif
endif

# SELinux
BOARD_SEPOLICY_DIRS += \
    $(PLATFORM_PATH)/sepolicy

# build.prop
TARGET_SYSTEM_PROP := $(PLATFORM_PATH)/system.prop

# Recovery
TARGET_RECOVERY_DEVICE_DIRS := $(PLATFORM_PATH)
TARGET_RECOVERY_FSTAB := $(PLATFORM_PATH)/recovery/recovery.fstab

#######################################################
# TWRP
RECOVERY_VARIANT := twrp

# Display
TW_THEME := portrait_hdpi
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
RECOVERY_GRAPHICS_FORCE_SINGLE_BUFFER := true
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 162

# Storage
RECOVERY_SDCARD_ON_DATA := true

# Keys
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../$(PLATFORM_PATH)/recovery/recovery_keys.c
BOARD_HAS_NO_SELECT_BUTTON := true

# Crypto.
TW_INCLUDE_CRYPTO := true

# Misc.
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_EXFAT_FUSE := true
TW_NEW_ION_HEAP := true
TW_MTP_DEVICE := "/dev/mtp_usb"
TW_EXCLUDE_SUPERSU := true
TW_EXCLUDE_TWRPAPP := true
TW_CUSTOM_CPU_TEMP_PATH := "/sys/class/thermal/thermal_zone1/temp"
BOARD_RECOVERY_SWIPE := true

# twrp recovery fstab
ifeq ($(RECOVERY_VARIANT), twrp)
PRODUCT_COPY_FILES += $(PLATFORM_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab
endif

