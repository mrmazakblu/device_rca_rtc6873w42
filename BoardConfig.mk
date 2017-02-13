TARGET_ARCH := x86
TARGET_CPU_ABI := x86
TARGET_ARCH_VARIANT := silvermont
TARGET_CPU_VARIANT := rk30sdk

BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/rca/rtc6873w42/kernel

BOARD_MKBOOTIMG_ARGS := --base 025f8000 --pagesize 4096 --kernel_offset 00008000 --ramdisk_offset fdf08000 --tags_offset fda08100 --second ~/omni/device/rca/rtc6873w42/recovery.img-second --second_offset ffe08010 --cmdline 'idle=halt notsc androidboot.hardware=sofiaboard apic=sofia nolapic_pm firmware_class.path=/system/vendor/firmware androidboot.selinux=permissive nolapic_timer x86_intel_xgold_timer=soctimer_only vmalloc=512m slub_max_order=0 console=ttyFIQ0,115200n8'  

#MTK common twrp flags
TW_NO_EXFAT := true
TWHAVE_SELINUX := true
#TW_USE_TOOLBOX := true
TW_NO_EXFAT_FUSE := true
TW_THEME := portrait_mdpi
#RECOVERY_SDCARD_ON_DATA := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/mt_usb/gadget/lun%d/file"
BOARD_CUSTOM_BOOTIMG_MK := device/rca/rtc6873w42/boot.mk
RECOVERY_TOUCHSCREEN_SWAP_XY := true
