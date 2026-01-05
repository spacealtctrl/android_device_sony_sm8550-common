# Device-specific common makefile includes

# Audio
PRODUCT_PACKAGES += \
    sound_trigger.primary.kalama \
    libaudioroute \
    libaudioroutemanager \
    libtinycompress \
    libtinyxml \
    libtinyxmlfactory \
    libqcompostprocbundle

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/audio_effects.xml

# Dalvik Heap
$(call inherit-from-template,dalvik_heap_size_defaults.mk)
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=12288m

# Media C2 Codec
PRODUCT_PACKAGES += \
    libcodec2_hidl \
    libcodec2_soft_aacdec \
    libcodec2_soft_aacenc \
    libcodec2_soft_amrnbdec \
    libcodec2_soft_amrnbenc \
    libcodec2_soft_amrwbdec \
    libcodec2_soft_amrwbenc \
    libcodec2_soft_av1dec_aom \
    libcodec2_soft_avcdec \
    libcodec2_soft_avcenc \
    libcodec2_soft_flacdec \
    libcodec2_soft_flacenc \
    libcodec2_soft_g711alawdec \
    libcodec2_soft_g711alawenc \
    libcodec2_soft_g711muldec \
    libcodec2_soft_g711mulenc \
    libcodec2_soft_gsmdec \
    libcodec2_soft_gsmenc \
    libcodec2_soft_heif \
    libcodec2_soft_hevcdec \
    libcodec2_soft_hevcenc \
    libcodec2_soft_mp3dec \
    libcodec2_soft_mpeg2dec \
    libcodec2_soft_mpeg4dec \
    libcodec2_soft_mpeg4enc \
    libcodec2_soft_opusdec \
    libcodec2_soft_opusenc \
    libcodec2_soft_vorbisdec \
    libcodec2_soft_vorbisenc \
    libcodec2_soft_vp8dec \
    libcodec2_soft_vp9dec \
    libcodec2_soft_rawdec
