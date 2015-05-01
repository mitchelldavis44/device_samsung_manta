# Release name
PRODUCT_RELEASE_NAME := Nexus10

# Inherit AOSP device configuration
$(call inherit-product, device/samsung/manta/full_manta.mk)

# Inherit common product files.
$(call inherit-product, vendor/eos/config/common.mk)

# Inherit tablet config.
$(call inherit-product, vendor/eos/config/common_full_tablet_wifionly.mk)

# Setup device specific product configuration.
PRODUCT_DEVICE := manta
PRODUCT_NAME := eos_manta
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus 10
PRODUCT_MANUFACTURER := Samsung

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mantaray BUILD_FINGERPRINT="google/mantaray/manta:5.1.1/LMY47V/1743759:user/release-keys" PRIVATE_BUILD_DESC="mantaray-user 5.1.1 LMY47V 1743759 release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/eos/prebuilt/common/bootanimations/BOOTANIMATION-1280x800.zip:system/media/bootanimation.zip
