#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/sony/sm8550-common

# Inherit from AOSP
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Inherit from SM8550 common
$(call inherit-product, device/qcom/sm8550/common.mk)

# Setup device specific product configuration.
PRODUCT_BRAND := sony
PRODUCT_DEVICE := sm8550-common
PRODUCT_MANUFACTURER := Sony
PRODUCT_MODEL := sm8550-common
PRODUCT_NAME := sm8550-common

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@7.0 \
    android.hardware.audio.effect@7.0 \
    audio.primary.sm8550 \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libaudioroute \
    libtinyalsa \
    sound_trigger.primary.kalama

PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio/sku_kalama/audio_effects.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.audio.recording.echosuppression=true

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.1

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.7 \
    libcamera2ndk_vendor

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=12288m

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.composer@3.0 \
    android.hardware.graphics.mapper@4.0 \
    android.hardware.memtrack@1.0 \
    libqdmetadata \
    libqdutils

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.4 \
    android.hardware.drm@1.3

# Fingerprint
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.3

# GNSS
PRODUCT_PACKAGES += \
    android.hardware.gnss@2.1 \
    android.hardware.gnss.measurement_corrections@1.1 \
    android.hardware.gnss.visibility@1.0

# GPS
PRODUCT_PACKAGES += \
    gps.sm8550

# Health
PRODUCT_PACKAGES += \
    android.hardware.health@2.1

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@4.1

# Media
PRODUCT_PACKAGES += \
    android.hardware.media.omx@1.0 \
    android.hardware.mediadrm@1.4 \
    libmediaplayerservice \
    libstagefright_soft_ac3 \
    libstagefright_soft_aacenc \
    libstagefright_soft_amrnbdec \
    libstagefright_soft_amrwbdec \
    libstagefright_soft_av1dec_aom \
    libstagefright_soft_avcdec \
    libstagefright_soft_avcenc \
    libstagefright_soft_flacenc \
    libstagefright_soft_flachdtsdec \
    libstagefright_soft_gsmdec \
    libstagefright_soft_hevcdec \
    libstagefright_soft_hevcenc \
    libstagefright_soft_mp3dec \
    libstagefright_soft_mpeg2dec \
    libstagefright_soft_mpeg4dec \
    libstagefright_soft_mpeg4enc \
    libstagefright_soft_ogg \
    libstagefright_soft_opusdec \
    libstagefright_soft_opusenc \
    libstagefright_soft_rawdec \
    libstagefright_soft_vp8dec \
    libstagefright_soft_vp9dec \
    libstagefright_soft_vp9enc \
    libstagefright_soft_vorbisdec \
    libstagefright_soft_vpxdec

# Media Codecs
PRODUCT_PACKAGES += \
    android.hardware.media.c2@1.2

# Memtrack
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-service

# Neural Networks
PRODUCT_PACKAGES += \
    android.hardware.neuralnetworks@1.3

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.2

# OMX
PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libstagefright_omx

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.2 \
    android.hardware.power.stats@1.0

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@2.1 \
    libsensorndkbridge

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@2.0

# USB
PRODUCT_PACKAGES += \
    android.hardware.usb@1.3 \
    android.hardware.usb.gadget@1.2 \
    com.android.future.usb.accessory

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.4

# WiFi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.7 \
    android.hardware.wifi.hostapd@1.0 \
    hostapd \
    libwifi-hal-qcom \
    wpa_supplicant \
    wpa_supplicant.conf

# WiFi Display
PRODUCT_PACKAGES += \
    android.hardware.tv.hdmi.earc@1.0

# WirelessData
PRODUCT_PACKAGES += \
    android.hardware.radio@1.6 \
    android.hardware.radio.config@1.3

# Fstab
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/etc/fstab.sm8550:$(TARGET_COPY_OUT_RAMDISK)/fstab.sm8550 \
    $(DEVICE_PATH)/rootdir/etc/fstab.sm8550:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.sm8550

# Init scripts
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/etc/init.sm8550.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.sm8550.rc \
    $(DEVICE_PATH)/rootdir/etc/init.sm8550.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.sm8550.usb.rc \
    $(DEVICE_PATH)/rootdir/etc/ueventd.sm8550.rc:$(TARGET_COPY_OUT_VENDOR)/etc/ueventd.sm8550.rc

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay
DEVICE_PACKAGE_OVERLAYS += $(DEVICE_PATH)/overlay-lineage

# Properties
-include $(DEVICE_PATH)/BoardConfigVendor.mk
