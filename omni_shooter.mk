# Release name
PRODUCT_RELEASE_NAME := shooter

# Inherit some CDMA stuff.
$(call inherit-product, vendor/omni/config/cdma.mk)

# Inherit device configuration
$(call inherit-product, device/htc/shooter/device.mk)

# Inherit some common Omni stuff
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := shooter
PRODUCT_NAME := omni_shooter
PRODUCT_BRAND := htc
PRODUCT_MODEL := shooter
PRODUCT_MANUFACTURER := htc
