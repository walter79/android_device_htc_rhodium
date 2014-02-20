# Inherit AOSP device configuration for hero.
ifdef CYANOGEN_SMALL
$(call inherit-product, device/htc/rhodium/small_rhodium.mk)
else
$(call inherit-product, device/htc/rhodium/full_rhodium.mk)
endif

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_rhodium
PRODUCT_BRAND := htc
PRODUCT_DEVICE := rhodium
PRODUCT_MODEL := Rhodium
PRODUCT_MANUFACTURER := HTC

PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/cyanogen/prelink-linux-arm-rhodium.map

# Release name and versioning
PRODUCT_RELEASE_NAME := Rhodium
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy passion specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
