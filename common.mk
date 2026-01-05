# Display
PRODUCT_PACKAGES += \
    vendor.display.config@1.0 \
    vendor.display.config@2.0

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.service \
    android.hardware.audio@7.1.vendor \
    android.hardware.audio.effect@7.0.vendor \
    android.hardware.soundtrigger@2.3.vendor \
    libvolumelistener \
    sound_trigger.primary.kalama \
    libaudioroute \
    libaudioutils \
    libaudiospdm \
    libdsd2pcm \
    libqcomvoiceprocessing \
    libqcomvisualizer \
    libqcomvoiceprocessingdescriptors \
    libsndmonitor \
    libswetone

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml

# Media codec
PRODUCT_PACKAGES += \
    android.hardware.media.c2@1.0.vendor \
    android.hardware.media.c2@1.1.vendor \
    android.hardware.media.c2@1.2.vendor \
    libcom.android.media.swcodec.apexcodecs

# Dalvik
$(call inherit-product, frameworks/native/build/phone-xhdpi-12288-dalvik-heap.mk)

# Default USB mode
PRODUCT_DEFAULT_USB_MODE := mtp
